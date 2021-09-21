# frozen_string_literal: true

class CreateOrderStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :order_stocks do |t|
      t.references :stock, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :amount, null: false, default: 1
      t.timestamps
    end
  end
end
