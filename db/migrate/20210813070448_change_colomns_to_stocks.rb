# frozen_string_literal: true

class ChangeColomnsToStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :color
    remove_column :stocks, :size
  end
end
