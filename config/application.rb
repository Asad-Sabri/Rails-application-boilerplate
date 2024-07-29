require_relative "boot"

require "rails/all"
require "grape"

Bundler.require(*Rails.groups)

module MyrailsApp
  class Application < Rails::Application
    config.load_defaults 7.1

    config.paths.add 'app/api', glob: '**/*.rb'
    config.autoload_paths += Dir[Rails.root.join('app', 'api')]
    config.eager_load_paths += Dir[Rails.root.join('app', 'api')]
  end
end
