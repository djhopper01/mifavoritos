Diffbot.configure do |config|
  config.token = Settings.diffbot.api_key
  config.instrumentor = ActiveSupport::Notifications
end