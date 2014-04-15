# spec/models/care_plan_spec.rb
require 'spec_helper'

describe CarePlan do
  let (:care_plan) {create(:care_plan)}
  it {should validate_presence_of(:name)}
  it {should have_many(:animals)}
  it {should have_and_belong_to_many(:supplies)}

  before { @care_plan1 = create(:care_plan, name:"plan1") }

  subject { @care_plan1 }

  it "does not allow duplicate names" do
    build(:care_plan, name:"plan1").should_not be_valid
  end
end
