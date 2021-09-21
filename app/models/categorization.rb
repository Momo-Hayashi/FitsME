# frozen_string_literal: true

class Categorization < ApplicationRecord
  belongs_to :clothe
  belongs_to :category
end
