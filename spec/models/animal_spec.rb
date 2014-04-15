# spec/models/animal_spec.rb
require 'spec_helper'

describe Animal do
  #let (:customer) {create(:customer)}
  it {should validate_presence_of :arrival_date}
  it {should belong_to(:care_plan)}
  it {should belong_to(:shelter)}
  it {should belong_to(:customer)}

  before { @animal1 = create(:animal, arrival_date: "2013-01-01") }

  subject { @animal1 }

  it "does not allow arrival dates from the future" do
    build(:animal, arrival_date: "9999-12-31").should_not be_valid
  end

end

# create several objects at once
# 1000.times { Factory(:animal) }
