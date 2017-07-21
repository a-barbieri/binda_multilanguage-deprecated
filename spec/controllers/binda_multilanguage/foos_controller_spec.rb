require 'rails_helper'

module BindaMultilanguage
  RSpec.describe FoosController, type: :controller do

    routes { BindaMultilanguage::Engine.routes }

  	describe 'GET #index' do
	    it 'returns bar' do
	    	get :index
	    	expect(response).to have_http_status(:success)
	    end
  	end

  end
end
