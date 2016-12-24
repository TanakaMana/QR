require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module RailsHinagata
  class Application < Rails::Application

      config.to_prepare do
        Devise::SessionsController.layout 'admin_lte_2_login'
      end

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework  nil
      g.assets  false
      g.helper false
      g.stylesheets false
    end

    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    config.autoload_paths += %W(#{config.root}/app/services)
  end
end
