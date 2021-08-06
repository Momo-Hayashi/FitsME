class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :current_password

  validates :username, presence: true, length: { in: 1..30 }
  validates :points, presence: true

  has_many :favorites, dependent: :destroy
  has_many :favorite_clothes, through: :favorites, source: :clothe
  has_many :orders
  has_many :carts, dependent: :destroy
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses, allow_destroy: true, reject_if: :reject_all_blank

  def reject_all_blank(attributes)
    if attributes[:id]
      attributes.merge!(_destroy: "1") if attributes[:last_name].blank? and attributes[:first_name].blank? and attributes[:postcode].blank? and attributes[:address_city].blank? and attributes[:address_street].blank? and attributes[:address_building].blank? and attributes[:phone_number].blank?
      !attributes[:last_name].blank? and attributes[:first_name].blank? and attributes[:postcode].blank? and attributes[:address_city].blank? and attributes[:address_street].blank? and attributes[:address_building].blank? and attributes[:phone_number].blank?
    else
      attributes[:last_name].blank? and attributes[:first_name].blank? and attributes[:postcode].blank? and attributes[:address_city].blank? and attributes[:address_street].blank? and attributes[:address_building].blank? and attributes[:phone_number].blank?
    end
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.username = 'ゲスト'
      user.password = SecureRandom.urlsafe_base64
    end
  end

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
