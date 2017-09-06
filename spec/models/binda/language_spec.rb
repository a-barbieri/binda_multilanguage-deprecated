require 'rails_helper'

RSpec.describe Binda::Language, type: :model do
  
  it "doesn't allow nil as lang value" do
  	expect{ Binda::Language.create!(lang: '')}.to raise_error ActiveRecord::RecordInvalid
  end
  
  it "doesn't allow anything but a country code as lang value" do
  	expect{ Binda::Language.create!(lang: 'hello')}.to raise_error ActiveRecord::RecordInvalid
  	expect{ Binda::Language.create!(lang: 'US')}.not_to raise_error
  end

end
