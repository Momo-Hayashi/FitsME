# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :clothe
  has_many_attached :images

  validates :rate, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true, length: { maximum: 250 }
  validates :stock_no, presence: true
end
