class Review < ApplicationRecord
  belongs_to :user
  belongs_to :clothe
  has_many_attached :images

  validates :rate, presence: true
  validates :content, presence: true, length: { maximum: 250 }
  validates :stock_no, presence: true
end
