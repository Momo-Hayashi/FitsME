# frozen_string_literal: true

FactoryBot.define do
  factory :order_stock do
    association :order
    association :stock
    amount { 1 }
  end
end
