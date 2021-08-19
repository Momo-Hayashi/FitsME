FactoryBot.define do
  factory :admin do
    name { 'アドミン' }
    email { 'admin@admin.jp' }
    password { 'admin@admin.jp' }
    password_confirmation { 'admin@admin.jp' }
  end

end
