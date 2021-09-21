# frozen_string_literal: true

class AddStockIdToCarts < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :stock, foreign_key: true
  end
end
