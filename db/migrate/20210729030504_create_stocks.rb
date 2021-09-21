# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :size
      t.string :color
      t.integer :quantity
      t.references :clothe, foreign_key: true
      t.timestamps
    end
  end
end
