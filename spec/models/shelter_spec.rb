# spec/models/shelter_spec.rb
require 'spec_helper'

describe Shelter do
  it {should validate_presence_of (:name)}
  it {should validate_presence_of (:address)}
  it {should have_many (:animals)}
  it {should have_many (:staffs)}

  before { @shelter1 = create(:shelter, name:"home1", address:"123 street")
 }

  subject { @shelter1 }

  it "does not allow duplicate names" do
    build(:shelter, name:"home1", address:"345 street").should_not be_valid
  end

  it "does not allow duplicate addresses" do
    build(:shelter, name:"home2", address:"123 street").should_not be_valid
  end
end
