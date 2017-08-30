require "rails_helper"

RSpec.describe Binda::LanguagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/binda/languages").to route_to("binda/languages#index")
    end

    it "routes to #new" do
      expect(:get => "/binda/languages/new").to route_to("binda/languages#new")
    end

    it "routes to #show" do
      expect(:get => "/binda/languages/1").to route_to("binda/languages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/binda/languages/1/edit").to route_to("binda/languages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/binda/languages").to route_to("binda/languages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/binda/languages/1").to route_to("binda/languages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/binda/languages/1").to route_to("binda/languages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/binda/languages/1").to route_to("binda/languages#destroy", :id => "1")
    end

  end
end
