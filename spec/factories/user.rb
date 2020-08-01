FactoryBot.define do
  factory :user, class: User do
    name { 'User' }
    email { 'user@example.com' }
    password { '123456' }
  end
end
