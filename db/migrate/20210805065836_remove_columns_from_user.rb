class RemoveColumnsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :last_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :postcode, :integer
    remove_column :users, :prefecture_code, :integer
    remove_column :users, :address_city, :string
    remove_column :users, :address_street, :string
    remove_column :users, :address_building, :string
    remove_column :users, :phone_number, :string
  end
end
