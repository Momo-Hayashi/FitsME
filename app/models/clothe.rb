class Clothe < ApplicationRecord
  has_many_attached :images
  belongs_to :retailer
  has_many :categorizations
  has_many :categories, through: :categorizations, source: :category
  has_many :favorites, dependent: :destroy
  has_many :stocks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :stocks, allow_destroy: true, reject_if: :all_blank
end
