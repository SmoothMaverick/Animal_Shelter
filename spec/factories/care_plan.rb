# spec/factories/care_plan.rb

require 'faker'

FactoryGirl.define do
  factory :care_plan do |f|
    f.name { Faker::Name.name}
  end
end

