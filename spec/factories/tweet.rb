FactoryBot.define do
  factory :tweet do
    sequence(:tweet) { Faker::Quote.famous_last_words }
    user
  end
end
