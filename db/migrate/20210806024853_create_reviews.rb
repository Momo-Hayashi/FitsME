# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true
      t.text :content, null: false
      t.timestamps
    end
  end
end
