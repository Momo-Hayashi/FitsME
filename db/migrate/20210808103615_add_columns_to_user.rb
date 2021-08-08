class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :height, :float
    add_column :users, :weight, :float
    add_column :users, :bust, :float
    add_column :users, :waist, :float
    add_column :users, :hip, :float
    add_column :users, :birthday, :date
  end
end
