class Order < ApplicationRecord
  belongs_to :user
  has_many :order_stocks, dependent: :destroy
  has_many :bought_stocks, through: :order_stocks, source: :stock
  # accepts_nested_attributes_for :order_stocks, allow_destroy: true, reject_if: :all_blank

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :last_name, presence: true, length: { maximum: 100 }
  validates :first_name, presence: true, length: { maximum: 100 }
  VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
  validates :postcode, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :prefecture_code, presence: true
  validates :address_city, presence: true, length: { maximum: 100 }
  validates :address_street, presence: true, length: { maximum: 100 }
  VALID_PHONE_REGEX = /\A\d{10,11}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }

  def self.new_order(user_id, address_id, price, used_points, paid_price)
    @address = Address.find(address_id)
    Order.create(
      user_id: user_id,
      price: price,
      used_points: used_points,
      paid_price: paid_price,
      last_name: @address.last_name,
      first_name: @address.first_name,
      postcode: @address.postcode,
      prefecture_code: @address.prefecture_code,
      address_city: @address.address_city,
      address_street: @address.address_street,
      address_building: @address.address_building,
      phone_number: @address.phone_number,
    )
  end
end
