# spec/factories/customer.rb

require 'faker'

FactoryGirl.define do
  factory :customer do |f|
    f.name {Faker::Name.name}
    f.address {Faker::Address.street_address}
  end
end

