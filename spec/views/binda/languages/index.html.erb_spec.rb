require 'rails_helper'

RSpec.describe "binda/languages/index", type: :view do

  before(:each) do
    assign(:binda_languages, [
      Binda::Language.create!(
        :lang => "US",
        :selected => false
      ),
      Binda::Language.create!(
        :lang => "US",
        :selected => false
      )
    ])
  end

  it "renders a list of binda/languages" do
    render
    assert_select "tr>td", :text => "US".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
