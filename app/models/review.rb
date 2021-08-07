class Review < ApplicationRecord
  belongs_to :user
  belongs_to :clothe
  has_many_attached :images
end
