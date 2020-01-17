require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Smartlifeclinic
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
		Rails.autoloaders.main.ignore('/Users/ritwickmalhotra/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/fae-rails-1.7.1/lib/fae-rails.rb')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
