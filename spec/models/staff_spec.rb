# spec/models/staff_spec.rb
require 'spec_helper'

describe Staff do
  it {should validate_presence_of (:name)}
  it {should belong_to(:shelter)}
end
