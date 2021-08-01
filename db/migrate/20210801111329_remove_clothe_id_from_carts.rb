class RemoveClotheIdFromCarts < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :clothe_id, :references
  end
end
