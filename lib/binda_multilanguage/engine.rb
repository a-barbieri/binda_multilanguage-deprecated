require "binda"
require "mobility"
require "countries"
require "country_select"

module BindaMultilanguage
  class Engine < ::Rails::Engine
    # isolate_namespace BindaMultilanguage

    config.generators do |g|
      g.integration_tool :rspec
      g.test_framework :rspec
    end
    
	  config.parent_controller = 'Binda::ApplicationController'
  end
end
