class Stock < ApplicationRecord
  belongs_to :clothe, optional: true
  validates :size, presence: true
  validates :color, presence: true
  validates :quantity, presence: true
  
  has_many :carts
  has_many :order_stocks
  has_many :bought_orders, through: :order_stocks, source: :order
end
