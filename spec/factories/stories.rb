# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    title "MyString"
    description "MyText"
    stack nil
    position 1
  end
end
