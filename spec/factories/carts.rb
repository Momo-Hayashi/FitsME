# frozen_string_literal: true

FactoryBot.define do
  factory :cart do
    association :user
    association :stock
    amount { 1 }
  end
end
