FactoryBot.define do
  factory :google_user, class: User do
    name { Faker::Name.name }
    password  { Faker::Alphanumeric.alpha(number: 10) }
    email { Faker::Internet.email }
    provider { 'google_oauth2' }
    uid { Faker::Number.number }
  end
end 