# frozen_string_literal: true

class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, null: false
      t.text :size, null: false
      t.references :retailer, foreign_key: true
      t.timestamps
    end
  end
end
