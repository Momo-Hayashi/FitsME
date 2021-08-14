class Clothe < ApplicationRecord
  has_many_attached :images
  belongs_to :retailer
  has_many :categorizations
  has_many :categories, through: :categorizations, source: :category
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :stocks, dependent: :destroy
  accepts_nested_attributes_for :stocks, allow_destroy: true, reject_if: :all_blank
  validates_associated :stocks
  validates :stocks, presence: true

  validates :name, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :images, presence: true
  validates :less_than_3_categories, presence: true

  def less_than_3_categories
    if categories.length > 4
      errors.add(:categories, ": カテゴリーは3つまでしか選べません")
    else categories.length < 4
      true
    end
  end

end
