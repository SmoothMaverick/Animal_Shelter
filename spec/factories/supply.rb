# spec/factories/supply.rb

require 'faker'

FactoryGirl.define do
  factory :supply do |f|
    f.name {Faker::Commerce.product_name}
    f.type {Faker::Commerce.department}
    f.quantity {rand(100)}
  end
end

