FactoryBot.define do
  factory :address do
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
