FactoryBot.define do
  factory :item do
    description { Faker::Name.name }
    price { Faker::Number.number }
  end
end
