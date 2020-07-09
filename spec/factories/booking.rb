FactoryBot.define do
  factory :booking, class: Booking do
    association :user
    association :guide
    date { "2020-07-06" }
  end
end
