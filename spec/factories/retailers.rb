FactoryBot.define do
  factory :retailer do
    name { 'テストリテイラー' }
    address {'東京都渋谷区渋谷市1-2-3'}
    email { 'test_retailer1@test.com' }
    website_url { 'https://diveintocode.jp/' }
    phone_number { '1234567890' }
    password { 'test_retailer1@test.com' }
  end

  factory :second_retailer, class:Retailer do
    name { '削除リテイラー' }
    address {'東京都渋谷区渋谷市1-2-3'}
    email { 'test_retailer2@test.com' }
    website_url { 'https://diveintocode.jp/' }
    phone_number { '1234567890' }
    password { 'test_retailer2@test.com' }
  end

end
