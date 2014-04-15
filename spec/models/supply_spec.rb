# spec/models/supply_spec.rb
require 'spec_helper'

describe Supply do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:quantity) }
  it { should validate_numericality_of(:quantity).is_greater_than(0) }
  it { should have_and_belong_to_many(:care_plans) }

  before { @supply1 = create(:supply) }

  subject { @supply1 }

  # it "does not allow negative quantities" do
  #   build(:supply, quantity: -100).should_not be_valid
  # end

  it "does not allow non-integers" do
    build(:supply, quantity: 10.3).should_not be_valid
  end

end
