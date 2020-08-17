Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,"b5f49a09ee8155203e44","39c4081ee045706805f2cb38dfc287ff578700ca"
  else
    provider :github,
    Rails.application.credentials.github[:client_id],
    Rails.application.credentials.github[:client_secret]
  end
end