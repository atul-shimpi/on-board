# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    type_of_address 1
    address "MyText"
    state_id 1
    city_id 1
  end
end
