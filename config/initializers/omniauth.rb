Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.credentials.twitter_token , Rails.application.credentials.twitter_secret
end