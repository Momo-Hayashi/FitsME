FactoryBot.define do
  factory :user do
    username { 'テストユーザー' }
    birthday { '1990-10-10' }
    email { 'test_user1@test.com' }
    password { 'test_user1@test.com' }
    password_confirmation { 'test_user1@test.com' }
    points { 0 }
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
