# reference https://stackoverflow.com/a/30668456/1498118
require 'rails_helper'
module Binda
	RSpec.describe ComponentsController, type: :controller do
	  controller do
	    include ComponentsControllerExtension

	    def index; end
	  end

	  # Make sure the include doesn't generate any issue
	  describe 'GET Component index' do
	    it 'will work' do
	      get :index
	    end
	  end

	  describe 'set_language method' do
	    before(:context) do
	      @structure = create(:structure)
	    end
	    it "saves 'en' as default language" do
	    	component = Component.create( structure_id: @structure, name: 'lorem' )
	    	expect( component.lang ).to eq 'en'
		  end
		end

	end
end