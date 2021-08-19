class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :current_password

  validates :username, presence: true, length: { in: 1..30 }
  validates :points, presence: true
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :birthday, presence: true
  validates :height, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 300  }, allow_blank: true
  validates :weight, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 300  }, allow_blank: true
  validates :waist, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 300  }, allow_blank: true
  validates :bust, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 300  }, allow_blank: true
  validates :hip, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 300  }, allow_blank: true

  has_many :favorites, dependent: :destroy
  has_many :favorite_clothes, through: :favorites, source: :clothe
  has_many :orders
  has_many :reviews
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
      user.birthday = '1999-10-10'
      user.password = SecureRandom.urlsafe_base64
      user.addresses.last_name = '山田'
      user.addresses.first_name = '太郎'
      user.addresses.postcode = '1500000'
      user.addresses.prefecture_code = '13'
      user.addresses.address_city = '渋谷区'
      user.addresses.address_street = '渋谷1-2-3'
      user.addresses.phone_number ='123456789'
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
