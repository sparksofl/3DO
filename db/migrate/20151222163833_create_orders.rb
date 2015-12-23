class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :card_num
      t.integer :price
      t.integer :material_id
      t.integer :model_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
