require "test_helper"
require "redis_rotator"

class RedisRotatorTest < ActiveSupport::TestCase
  setup do
    @original_redis_url = ENV["REDIS_URL"]
    @original_rotation_urls = ENV["REDIS_ROTATION_URLS"]
    RedisRotator.instance_variable_set(:@urls, nil)
  end

  teardown do
    ENV["REDIS_URL"] = @original_redis_url
    ENV["REDIS_ROTATION_URLS"] = @original_rotation_urls
    RedisRotator.instance_variable_set(:@urls, nil)
  end

  test "urls puts REDIS_URL first, followed by REDIS_ROTATION_URLS fallbacks" do
    ENV["REDIS_URL"] = "redis://primary:6379/0"
    ENV["REDIS_ROTATION_URLS"] = "redis://fallback1:6379/0, redis://fallback2:6379/0"

    assert_equal(
      [ "redis://primary:6379/0", "redis://fallback1:6379/0", "redis://fallback2:6379/0" ],
      RedisRotator.urls
    )
  end

  test "urls deduplicates when REDIS_ROTATION_URLS repeats REDIS_URL" do
    ENV["REDIS_URL"] = "redis://primary:6379/0"
    ENV["REDIS_ROTATION_URLS"] = "redis://primary:6379/0,redis://fallback1:6379/0"

    assert_equal(
      [ "redis://primary:6379/0", "redis://fallback1:6379/0" ],
      RedisRotator.urls
    )
  end

  test "urls falls back to REDIS_URL alone when REDIS_ROTATION_URLS is unset" do
    ENV["REDIS_URL"] = "redis://primary:6379/0"
    ENV.delete("REDIS_ROTATION_URLS")

    assert_equal [ "redis://primary:6379/0" ], RedisRotator.urls
  end

  test "urls defaults to localhost when neither env var is set" do
    ENV.delete("REDIS_URL")
    ENV.delete("REDIS_ROTATION_URLS")

    assert_equal [ "redis://localhost:6379/0" ], RedisRotator.urls
  end
end
