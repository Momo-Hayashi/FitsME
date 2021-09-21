# frozen_string_literal: true

class AddChangeToCategory < ActiveRecord::Migration[5.2]
  def change
    remove_reference :clothes, :category, foreign_key: true
  end
end
