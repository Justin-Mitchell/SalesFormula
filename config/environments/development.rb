Rails.application.configure do
  #
  # Settings specified here will take precedence over those in config/application.rb.
  #
  
  # Cache Settings
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Action Mailer Settings
  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.smtp_settings = {
      :user_name => 'agentformula',
      :password => 'AF-ap6MST2s-sendgrid',
      :domain => 'agentformula.com',
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
  }

  # Logging / Debugging / Error Handling
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
end
