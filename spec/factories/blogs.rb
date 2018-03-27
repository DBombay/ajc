FactoryBot.define do
  factory :blog do
    title 'Test Blog'
    completed false

    trait :completed do
      completed true
    end
    
  end
end
