require 'resque'

# Point the dashboard at the redis service (replaces appwrite's RESQUE_WEB_HOST/PORT).
# Accepts "host:port" and, with a namespace, "host:port/namespace".
redis = ENV.fetch('RESQUE_REDIS', 'redis:6379')
redis = "#{redis}/#{ENV['RESQUE_NAMESPACE']}" if ENV['RESQUE_NAMESPACE']
Resque.redis = redis
