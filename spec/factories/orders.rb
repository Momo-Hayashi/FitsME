# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    price { '10000' }
    used_points { '300' }
    paid_price { '9700' }
    last_name { 'テスト' }
    first_name { 'アドレス' }
    postcode { '1333333' }
    prefecture_code { '13' }
    address_city { '渋谷区' }
    address_street { '渋谷市1-2-3' }
    address_building { '渋谷ビル123' }
    phone_number { '1234567890' }
    association :user
  end
end
