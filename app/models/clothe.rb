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

  validates :name, presence: true, length: { maximum: 100 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1}
  validates :size, presence: true, length: { maximum: 500 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :images, presence: true
  validates :less_than_3_categories, presence: true

  def less_than_3_categories
    if categories.length >= 4
      errors.add(:categories, "は3つまでしか選べません")
    elsif categories.length == 0
      errors.add(:categories, "を1-3個選択してください")
    elsif 0 < categories.length && categories.length < 4
      true
    end
  end

end
