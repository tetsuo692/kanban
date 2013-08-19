# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    sequence(:title) {|n| "Story #{n}" }
    description "MyText"
    stack nil
  end
end
