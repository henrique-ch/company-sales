FactoryBot.define do
  factory :upload_file do
    nome { Faker::Name.name }
    upload_at { DateTime.now }
    path { "public/uploads/#{nome}.tab" }
    receita_bruta { Faker::Number.number }
  end
end
