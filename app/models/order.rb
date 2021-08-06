class Order < ApplicationRecord
  belongs_to :user
  has_many :order_stocks
  has_many :bought_stocks, through: :order_stocks, source: :stock
end
