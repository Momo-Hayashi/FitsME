class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :clothe, foreign_key: true
      t.integer :price, null:false
      t.integer :amount, null:false, default:1
      t.integer :zipcode, null:false
      t.integer :prefecture, null:false
      t.string :city, null:false
      t.text :following_address, null:false
      t.timestamps
    end
  end
end
