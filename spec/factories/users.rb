FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    password  { Faker::Alphanumeric.alpha(number: 10) }
    email { Faker::Internet.email }
  end
end 