class AddReferenceToClothe < ActiveRecord::Migration[5.2]
  def change
    add_reference :clothes, :category, foreign_key: true
  end
end
