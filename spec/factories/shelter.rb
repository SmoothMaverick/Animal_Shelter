# spec/factories/shelter.rb

require 'faker'

FactoryGirl.define do
  factory :shelter do |f|
    f.name {Faker::Company.name}
  end
end

