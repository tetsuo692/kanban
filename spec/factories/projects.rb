FactoryGirl.define do
  factory :project do
    sequence(:title) {|n| "Title #{n}" }

    factory :project_with_stacks do
      ignore do
        stacks_count 4
      end

      after(:create) do |project, evaluator|
        create_list(:stack_with_stories, evaluator.stacks_count, project: project)
      end
    end
  end
end