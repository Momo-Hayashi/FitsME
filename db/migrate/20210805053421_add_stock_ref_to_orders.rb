# frozen_string_literal: true

class AddStockRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :stock, foreign_key: true
  end
end
