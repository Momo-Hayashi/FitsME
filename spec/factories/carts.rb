FactoryBot.define do
  factory :cart do
    association :user
    association :stock
    amount { 2 }
  end
end
