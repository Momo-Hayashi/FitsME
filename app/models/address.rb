class Address < ApplicationRecord
  belongs_to :user

  validates :last_name, presence: true, length: { maximum: 100 }
  validates :first_name, presence: true, length: { maximum: 100 }
  VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
  validates :postcode, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :prefecture_code, presence: true
  validates :address_city, presence: true, length: { maximum: 100 }
  validates :address_street, presence: true, length: { maximum: 100 }
  VALID_PHONE_REGEX = /\A\d{10,11}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }
end
