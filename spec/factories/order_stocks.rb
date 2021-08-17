FactoryBot.define do
  factory :order_stock do
    association :order
    association :stock
    amount { 2 }
  end
end
