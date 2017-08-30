require 'rails_helper'

RSpec.describe "Binda::Languages", type: :request do
  describe "GET /binda_languages" do
    it "works! (now write some real specs)" do
      get binda_languages_path
      expect(response).to have_http_status(200)
    end
  end
end
