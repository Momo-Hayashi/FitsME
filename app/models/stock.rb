class Stock < ApplicationRecord
  belongs_to :clothe, optional: true
  validates :size, presence: true
  validates :color, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }

  has_many :carts
  has_many :order_stocks, dependent: :destroy
  has_many :bought_orders, through: :order_stocks, source: :order, dependent: :destroy

  enum color: { White:0, Black:1, Blue:2, Brown:3, Green:4, Purple:5, Yellow:6,
              Pink:7, Red:8, Orange:9, Silver:10, Gold:11, Floral:12, Grey:13, Beige:14, 'Mixed Colors':15, Other:16 }
  enum size: { 'one-size':0, '~XS':1, S:2, M:3, L:4, 'XL~':5 }

end
