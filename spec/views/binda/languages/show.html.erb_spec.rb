require 'rails_helper'

RSpec.describe "binda/languages/show", type: :view do

  before(:each) do
    @binda_language = assign(:binda_language, Binda::Language.create!(
      :lang => "US",
      :selected => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/US/)
    expect(rendered).to match(/false/)
  end
end
