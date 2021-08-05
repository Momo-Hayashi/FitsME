class RemoveClotheIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :clothe, foreign_key: true
  end
end
