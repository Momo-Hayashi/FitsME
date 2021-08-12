class Order < ApplicationRecord
  belongs_to :user
  has_many :order_stocks, dependent: :destroy
  has_many :bought_stocks, through: :order_stocks, source: :stock
  accepts_nested_attributes_for :order_stocks, allow_destroy: true, reject_if: :all_blank

  validates :price, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :postcode, presence: true
  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :phone_number, presence: true
  validates :order_stocks, presence: true
end
