class Stock < ApplicationRecord
  belongs_to :clothe
  has_many :carts
  has_many :orders
  has_many :reviews
end
