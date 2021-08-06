class OrderStock < ApplicationRecord
  belongs_to :order
  belongs_to :stock
end
