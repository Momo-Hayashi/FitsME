# frozen_string_literal: true

class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :used_points, :integer
    add_column :orders, :paid_price, :integer
  end
end
