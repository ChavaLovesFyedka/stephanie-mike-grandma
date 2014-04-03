# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :draft_variable do
    draft_id 1
    letter_id 1
    user_id 1
    variable_ordinal 1
    variable_value "MyString"
  end
end
