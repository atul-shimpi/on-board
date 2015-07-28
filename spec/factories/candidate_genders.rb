# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :candidate_gender do
    user_id 1
    genders_master_id "MyString"
  end
end
