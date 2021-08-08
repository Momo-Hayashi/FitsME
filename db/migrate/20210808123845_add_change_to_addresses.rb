class AddChangeToAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column_null :addresses, :address_building, true
  end
end
