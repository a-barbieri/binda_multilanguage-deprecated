require 'rails_helper'

RSpec.describe "binda/languages/show", type: :view do
  before(:each) do
    @binda_language = assign(:binda_language, Binda::Language.create!(
      :lang => "Lang",
      :selected => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lang/)
    expect(rendered).to match(/false/)
  end
end
