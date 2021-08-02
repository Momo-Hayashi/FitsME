class Stock < ApplicationRecord
  belongs_to :clothe
  has_many :stocks
end
