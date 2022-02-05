FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{n}-#{Faker::Internet.free_email}" }
    password { "123" }
    password_confirmation { "123" }
  end
end
