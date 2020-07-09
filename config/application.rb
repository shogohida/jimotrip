require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jimotrip
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
      generate.factory_bot false
      generate.factory_bot dir: 'custom/dir/for/factories'
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # config.factory_bot.definition_file_paths = ["custom/factories"]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
