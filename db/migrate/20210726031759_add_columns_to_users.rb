# frozen_string_literal: true

class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :points, :integer, default: 0
  end
end
