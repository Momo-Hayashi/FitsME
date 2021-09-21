# frozen_string_literal: true

class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'admin_guest@example.com') do |admin|
      admin.name = 'ゲスト管理者'
      admin.password = SecureRandom.urlsafe_base64
    end
  end
end
