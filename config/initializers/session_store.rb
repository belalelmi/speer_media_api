if Rails.env === "production"
Rails.application.config.session_store :cookie_store, key: "_authen_media_app", domain: "bhe-media-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_authen_media_app"
end