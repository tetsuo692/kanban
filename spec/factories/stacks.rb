# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stack do
    sequence(:title) {|n| "Stack #{n}" }
    project nil
  end
end
