class ChangeDatatypePhoneNumberofRetailers < ActiveRecord::Migration[5.2]
  def change
    change_column :retailers, :phone_number, :string
  end
end
