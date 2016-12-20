require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Videos
  class Application < Rails::Application

    require Rails.root.join 'app/models/settings'

    config.time_zone = 'Beijing'

    config.i18n.default_locale = :cn

    config.i18n.load_path += Dir[Rails.root.join('locales', '*.yml').to_s]

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g| #自定义模板生成
      g.assets false
      g.helper false
      g.stylesheets false
      g.javascripts false
    end

    config.generators do |g| #测试框架
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl
    end

    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      :address => Settings.email_stmp_address,
      :port => Settings.email_stmp_port,
      :user_name => Settings.devise_email,
      :password => Settings.devise_password,
      :authentication => "login",
      :enable_starttls_auto => true,
      :openssl_verify_mode => 'none' #Use this because ssl is activated but we have no certificate installed. So clients need to confirm to use the untrusted url.
    }

  end
end
