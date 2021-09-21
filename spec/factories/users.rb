# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { 'テストユーザー' }
    birthday { '1990-10-10' }
    email { 'testuser1@test.com' }
    password { 'testuser1@test.com' }
    password_confirmation { 'testuser1@test.com' }
    points { 0 }

    after(:build) do |user|
      user.addresses.build(
        last_name: 'テスト',
        first_name: 'アドレス',
        postcode: '1333333',
        prefecture_code: '13',
        address_city: '渋谷区',
        address_street: '渋谷市1-2-3',
        address_building: '渋谷ビル123',
        phone_number: '1234567890'
      )
    end
  end

  factory :second_user, class: User do
    username { 'テストユーザー2' }
    birthday { '1990-10-10' }
    email { 'test_user2@test.com' }
    password { 'test_user2@test.com' }
    password_confirmation { 'test_user2@test.com' }
    points { 0 }
  end
end
