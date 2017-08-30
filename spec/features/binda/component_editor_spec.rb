require "rails_helper"

describe "Component editor", type: :feature do
	let(:user) { Binda::User.first }

	before :context do
		@structure = create :article_structure_with_components
	end

	it "set language based on 'lang' parameter" do
		sign_in user
		path = binda.edit_structure_component_path @structure, @structure.components.first
		visit path 
		expect( page ).to have_current_path( path )
	end
	
end