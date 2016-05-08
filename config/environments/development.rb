Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.after_initialize do
    Bullet.enable = true
    Bullet.n_plus_one_query_enable = false

# Detect eager-loaded associations which are not used
    Bullet.unused_eager_loading_enable = false

# Detect unnecessary COUNT queries which could be avoided
# with a counter_cache
    Bullet.counter_cache_enable = false

  end
  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  #config.action_mailer.raise_delivery_errors = true

  # Preview email in the browser instead of sending it.
  # config.action_mailer.delivery_method = :letter_opener
  c#onfig.action_mailer.default_url_options = {:host => 'https://sergeycms.herokuapp.com'}
 # config.action_mailer.delivery_method = :smtp
  #config.action_mailer.perform_deliveries = true
  #config.action_mailer.default :charset => "utf-8"

  # config.action_mailer.smtp_settings = {
  #     address: "smtp.gmail.com",
  #     port: 587,
  #     domain: "gmail.com",
  #     authentication: :login,
  #     enable_starttls_auto: true,
  #     user_name: "sergeybasharkin@gmail.com",
  #     password: "ariarrn3336754"
  # }

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      address: "smtp.gmail.com",
      port: 587,
      domain: "gmail.com",
      user_name: "sergeybasharkin@gmail.com",
      password: "ariarrn3336754",
      authentication: 'plain',
      enable_starttls_auto: true
  }
  config.action_mailer.default_url_options = {:host => 'localhost:3000'}
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
