FactoryBot.define do
  factory :retailer do
    name { 'テストリテイラー' }
    address {'東京都渋谷区渋谷市1-2-3'}
    email { 'testuser1@test.com' }
    website_url { 'https://diveintocode.jp/' }
    phone_number { '1234567890' }
    password { 'testuser1@test.com' }
  end

end
