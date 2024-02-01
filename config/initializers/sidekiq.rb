require 'sidekiq'

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0' }
end

# $redis = Redis.new
# url = ENV["REDISCLOUD_URL"]
# if url
#   Sidekiq.configure_server do |config|
#     config.redis = { url: url }
#   end
#   Sidekiq.configure_client do |config|
#     config.redis = { url: url }
#   end
#   $redis = Redis.new(:url => url)
# end
