class Stock < ApplicationRecord
  belongs_to :clothe
  has_many :carts
  has_many :order_stocks
  has_many :bought_orders, through: :order_stocks, source: :orders
end
