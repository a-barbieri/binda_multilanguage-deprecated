require "binda"

module BindaMultilanguage
  class Engine < ::Rails::Engine
    isolate_namespace BindaMultilanguage

    config.generators do |g|
      g.test_framework :rspec
    end

	  config.parent_controller = 'Binda::ApplicationController'
  end
end
