# frozen_string_literal: true

class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :zipcode, :integer
    remove_column :orders, :prefecture, :integer
    remove_column :orders, :city, :string
    remove_column :orders, :following_address, :text
  end
end
