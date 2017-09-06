require 'rails_helper'

RSpec.describe "languages/edit", type: :view do

  before(:each) do
    @binda_language = assign(:binda_language, Binda::Language.create!(
      :lang => "US",
      :selected => false
    ))
  end

  it "renders the edit binda_language form" do
    render

    assert_select "form[action=?][method=?]", binda.language_path(@binda_language), "post" do

      assert_select "input[name=?]", "binda_language[lang]"

      assert_select "input[name=?]", "binda_language[selected]"
    end
  end
end
