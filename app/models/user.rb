class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, length: { in: 1..30 }
  validates :points, presence: true

  has_many :favorites, dependent: :destroy
  has_many :favorite_clothes, through: :favorites, source: :clothe
  has_many :orders
  has_many :carts, dependent: :destroy

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.username = 'ゲスト'
      user.password = SecureRandom.urlsafe_base64
    end
  end

end
