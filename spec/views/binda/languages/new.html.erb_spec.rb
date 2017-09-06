require 'rails_helper'

RSpec.describe "binda/languages/new", type: :view do

  before(:each) do
    assign(:binda_language, Binda::Language.new(
      :lang => "US",
      :selected => false
    ))
  end

  it "renders new binda_language form" do
    render

    assert_select "form[action=?][method=?]", binda.languages_path, "post" do

      assert_select "input[name=?]", "binda_language[lang]"

      assert_select "input[name=?]", "binda_language[selected]"
    end
  end
end
