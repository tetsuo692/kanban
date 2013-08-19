# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stack do
    sequence(:title) {|n| "Stack #{n}" }
    project nil
    factory :stack_with_stories do
      ignore do
        stories_count 3
      end

      after(:create) do |stack, evaluator|
        create_list(:story, evaluator.stories_count, stack: stack)
      end
    end
  end

end
