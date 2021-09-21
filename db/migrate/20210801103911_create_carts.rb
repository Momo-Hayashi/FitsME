# frozen_string_literal: true

class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.references :clothe, foreign_key: true
      t.integer :amount, null: false, default: 1
      t.timestamps
    end
  end
end
