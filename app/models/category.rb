class Category < ApplicationRecord
  has_ancestry
  has_many :categorizations
  has_many :clothes, through: :categorizations, source: :clothe
end
