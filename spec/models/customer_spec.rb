# spec/models/customer_spec.rb
require 'spec_helper'

describe Customer do
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:address) }
  it { should have_many(:animals) }

  before { @customer1 = create(:customer, name:"smith1", address:"123 street") }

  subject { @customer1 }

  it "does not allow duplicate names" do
    build(:customer, name:"smith1", address:"345 street").should_not be_valid
  end

  it "does not allow duplicate addresses" do
    build(:customer, name:"smith2", address:"123 street").should_not be_valid
  end
end
