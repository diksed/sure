class RedisRotationMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    attempts = 0
    begin
      # Rewind request body for retries (needed for POST requests)
      env["rack.input"].rewind if attempts > 0 && env["rack.input"].respond_to?(:rewind)
      @app.call(env)
    rescue => e
      if RedisRotator.limit_exceeded?(e) && attempts < RedisRotator.urls.length
        attempts += 1
        RedisRotator.rotate!
        retry
      end
      raise
    end
  end
end
