class Clothe < ApplicationRecord
  has_many_attached :images
  belongs_to :retailer
  has_many :favorites, dependent: :destroy
end
