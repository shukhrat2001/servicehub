FactoryBot.define do
  factory :service do
    name { "MyString" }
    description { "MyText" }
    category { "MyString" }
    base_price { "9.99" }
    duration_minutes { 1 }
    user { nil }
    slug { "MyString" }
  end
end
