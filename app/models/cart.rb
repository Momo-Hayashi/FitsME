class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  validates :amount, presence: true
end
