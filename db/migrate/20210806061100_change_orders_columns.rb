class ChangeOrdersColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :amount, :integer
    remove_reference :orders, :stock, foreign_key: true
  end
end
