# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
