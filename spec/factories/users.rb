FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "test+#{n}@test.com" }
    password { "123" }
    password_confirmation { "123" }
  end
end
