# spec/factories/animal.rb

# require 'faker'
#
# FactoryGirl.define do
#   factory :animal do |f|
#     f.name {Faker::Name.name}
#     f.arrival_date "2013-01-01"
#   end
# end

# use sequence to increment values
# and get unique attributes for 
# each object
FactoryGirl.define do
  factory :animal do
    sequence(:name) { |i| "ani#{i}" }
    arrival_date "2013-01-01"

    # animal with customer associated
    # inherits from parent animal factory
    factory :animal_adopted do
      association :customer
    end
  end
end


