# spec/factories/staff.rb

require 'faker'

FactoryGirl.define do
  factory :staff do |f|
    f.name { Faker::Name.name}
  end
end

