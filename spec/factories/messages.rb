FactoryBot.define do
  factory :message do
    service { nil }
    sender { nil }
    receiver { nil }
    content { "MyText" }
  end
end
