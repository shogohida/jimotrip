FactoryBot.define do
  factory :guide, class: Guide do
    association :user
    title { "Guide" }
    location { "Tokyo" }
    description { "Soccer event" }
    price { 100 }
    category { "History" }
  end
end
