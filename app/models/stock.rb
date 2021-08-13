class Stock < ApplicationRecord
  belongs_to :clothe
  has_many :carts
  has_many :order_stocks
  has_many :bought_orders, through: :order_stocks, source: :order

  enum color: { White:0, Black:1, Blue:2, Brown:3, Green:4, Purple:5, Yellow:6,
              Pink:7, Red:8, Orange:9, Silver:10, Gold:11, Floral:12, Grey:13, Beige:14, 'Mixed Colors':15, Other:16 }
  enum size: { 'one-size':0, '~XS':1, S:2, M:3, L:4, 'XL~':5 }
  
end
