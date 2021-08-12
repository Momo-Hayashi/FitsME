class Address < ApplicationRecord
  belongs_to :user
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :postcode, presence: true
  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :phone_number, presence: true
end
