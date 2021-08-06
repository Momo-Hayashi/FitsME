class AddShippingToToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipping_to, :integer, null:false, default:1
  end
end
