class Review < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  has_many_attached :images
end
