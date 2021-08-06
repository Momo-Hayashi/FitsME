class AddCrrentAddressToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :current_address, :boolean
  end
end
