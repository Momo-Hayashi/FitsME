class ChangeReviewsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :stock, foreign_key: true
    add_reference :reviews, :clothe, foreign_key: true
    add_column :reviews, :stock_no, :integer
    add_column :reviews, :rate, :float
  end
end
