# frozen_string_literal: true

class Retailer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  VALID_PHONE_REGEX = /\A\d{10,11}\z/.freeze
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }, allow_blank: true
  validates :website_url, format: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/, allow_blank: true
  # /\Ahttp(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?/
  validates :address, presence: true, length: { maximum: 250 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  has_one_attached :logo
  has_many :clothes, dependent: :destroy

  def self.guest
    find_or_create_by!(email: 'guest_retailer@example.com') do |retailer|
      retailer.name = 'ゲストリテイラー'
      retailer.phone_number = '1111111111'
      retailer.address = 'Tokyo'
      retailer.password = SecureRandom.urlsafe_base64
      retailer.description = 'オリジナルファブリックをこだわりとしデザインだけでなく、質感や素材にもトレンドを取り入れたブランド。
      「一人十色」の気分を持っているトレンディな人たちに向けたブランドです。'
      retailer.website_url = 'https://wwwwjp/'
    end
  end
end
