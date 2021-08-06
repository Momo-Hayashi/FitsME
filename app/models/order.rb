class Order < ApplicationRecord
  belongs_to :user
  has_many :order_stocks, dependent: :destroy
  has_many :bought_stocks, through: :order_stocks, source: :stock
  accepts_nested_attributes_for :order_stocks, allow_destroy: true, reject_if: :all_blank
end
