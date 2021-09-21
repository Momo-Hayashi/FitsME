# frozen_string_literal: true

class ChangeDescriptionToAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column_null :addresses, :last_name, true
    change_column_null :addresses, :first_name, true
    change_column_null :addresses, :postcode, true
    change_column_null :addresses, :prefecture_code, true
    change_column_null :addresses, :address_city, true
    change_column_null :addresses, :address_street, true
    change_column_null :addresses, :phone_number, true
  end
end
