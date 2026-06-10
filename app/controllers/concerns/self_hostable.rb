module SelfHostable
  extend ActiveSupport::Concern

  REDIS_CHECK_TTL = 60.seconds

  included do
    helper_method :self_hosted?, :self_hosted_first_login?

    prepend_before_action :verify_self_host_config
  end

  class << self
    attr_accessor :redis_connected, :redis_checked_at

    def mutex
      @mutex ||= Mutex.new
    end
  end

  private
    def self_hosted?
      Rails.configuration.app_mode.self_hosted?
    end

    def self_hosted_first_login?
      self_hosted? && User.count.zero?
    end

    def verify_self_host_config
      return unless self_hosted?

      # Special handling for Redis configuration error page
      if controller_name == "pages" && action_name == "redis_configuration_error"
        # If Redis is now working, redirect to home
        if redis_connected?
          redirect_to root_path, notice: t("concerns.self_hostable.redis_configured")
        end

        return
      end

      unless redis_connected?
        redirect_to redis_configuration_error_path
      end
    end

    # Cached in-process (not via Rails.cache/Redis) so this check doesn't
    # itself burn Redis request quota on every single request.
    def redis_connected?
      SelfHostable.mutex.synchronize do
        checked_at = SelfHostable.redis_checked_at
        if checked_at.nil? || checked_at < REDIS_CHECK_TTL.ago
          SelfHostable.redis_connected = begin
            Redis.new.ping
            true
          rescue Redis::CannotConnectError
            false
          rescue Redis::CommandError
            true
          end
          SelfHostable.redis_checked_at = Time.current
        end

        SelfHostable.redis_connected
      end
    end
end
