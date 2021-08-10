class ChangeColumnsInOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :last_name, :string, null: false, default: ""
    add_column :orders, :first_name, :string, null: false, default: ""
    add_column :orders, :postcode, :integer, null: false, default: 0
    add_column :orders, :prefecture_code, :integer, null: false, default: 0
    add_column :orders, :address_city, :string, null: false, default: ""
    add_column :orders, :address_street, :string, null: false, default: ""
    add_column :orders, :address_building, :string
    add_column :orders, :phone_number, :string, null: false, default: ""
    remove_column :orders, :shipping_to, :integer, null: false
  end
end
