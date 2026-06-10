# Rotates through a list of Redis URLs when Upstash request limits are exceeded.
#
# Configure via REDIS_ROTATION_URLS env var (comma-separated full Redis URLs).
# On startup, pings each URL in order and activates the first one that responds.
# At runtime, when a "max requests limit exceeded" error is caught, rotates to
# the next working URL and reinitializes Rails.cache and Sidekiq connections.
module RedisRotator
  LIMIT_ERROR = "max requests limit exceeded"

  class << self
    def setup!
      @mutex = Mutex.new
      @current_url = urls.length > 1 ? detect_working_url : nil
      @current_url ||= primary_url
      ENV["REDIS_URL"] = @current_url
      log("Active URL: #{masked(current_url)} (key #{current_index + 1}/#{urls.length})")
    rescue => e
      @current_url = primary_url
      log("Setup failed (#{e.message}), using primary URL")
    end

    def urls
      @urls ||= begin
        raw = ENV["REDIS_ROTATION_URLS"].to_s.strip
        raw.empty? ? [ primary_url ] : raw.split(",").map(&:strip).reject(&:empty?)
      end
    end

    def current_url
      @current_url || primary_url
    end

    def rotate!
      mutex.synchronize do
        log("Limit exceeded on #{masked(current_url)}, rotating...")
        next_url = detect_working_url_from(urls.rotate(current_index + 1))

        if next_url
          @current_url = next_url
          ENV["REDIS_URL"] = @current_url
          reinitialize_connections!
          log("Rotated to #{masked(current_url)} (key #{current_index + 1}/#{urls.length})")
        else
          log("All #{urls.length} Redis URLs are exhausted!")
        end
      end
    end

    def limit_exceeded?(error)
      return false unless error.respond_to?(:message) && error.message.include?(LIMIT_ERROR)

      error.is_a?(RedisClient::CommandError) ||
        (defined?(Redis::CommandError) && error.is_a?(Redis::CommandError))
    end

    private

    def primary_url
      ENV.fetch("REDIS_URL", "redis://localhost:6379/0")
    end

    def current_index
      urls.index(current_url) || 0
    end

    def detect_working_url
      detect_working_url_from(urls)
    end

    def detect_working_url_from(url_list)
      url_list.find do |url|
        client = Redis.new(url: url, connect_timeout: 5, read_timeout: 5, write_timeout: 5)
        result = client.ping == "PONG"
        client.close rescue nil
        result
      rescue => e
        raise unless limit_exceeded?(e)
        false
      end
    end

    def reinitialize_connections!
      reinitialize_cache!
      reinitialize_sidekiq!
    end

    def reinitialize_cache!
      return unless defined?(Rails.cache) && Rails.cache.is_a?(ActiveSupport::Cache::RedisCacheStore)

      Rails.cache = ActiveSupport::Cache.lookup_store(:redis_cache_store, url: @current_url)
    rescue => e
      log("Cache reinit error: #{e.message}")
    end

    def reinitialize_sidekiq!
      return unless defined?(Sidekiq) && Sidekiq.respond_to?(:default_configuration)

      config = Sidekiq.default_configuration
      config.redis = { url: @current_url }

      # Sidekiq lazily builds Redis connection pools (Config#@redis and each
      # Capsule#@redis) from @redis_config and memoizes them, so just updating
      # `redis=` above has no effect on already-running heartbeat/poller/fetcher
      # loops. Clear the memoized pools so they're rebuilt with the new URL.
      targets = [ config ]
      targets += config.capsules.values if config.respond_to?(:capsules)

      targets.each do |target|
        target.instance_variable_set(:@redis, nil) if target.instance_variable_defined?(:@redis)
      end
    rescue => e
      log("Sidekiq reinit error: #{e.message}")
    end

    def mutex
      @mutex ||= Mutex.new
    end

    def log(msg)
      if defined?(Rails) && Rails.logger
        Rails.logger.warn("[RedisRotator] #{msg}")
      else
        warn("[RedisRotator] #{msg}")
      end
    end

    def masked(url)
      url.to_s.gsub(/:([^:@\/]{4,})@/, ':***@')
    end
  end
end
