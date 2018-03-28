FactoryBot.define do
  factory :user do
    name 'Test User'
    provider 'facebook'
    uid '1234'
    admin false

    trait :admin do
      admin true
    end
  end
end
