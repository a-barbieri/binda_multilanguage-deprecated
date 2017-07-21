require_dependency "binda_multilanguage/application_controller"

module BindaMultilanguage
  class FoosController < ApplicationController
  	def index
  		head :ok
  	end
  end
end
