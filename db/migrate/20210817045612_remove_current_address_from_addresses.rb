# frozen_string_literal: true

class RemoveCurrentAddressFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :current_address, :boolean
  end
end
