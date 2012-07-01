class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :description
      t.string :owner
      t.references :meal

      t.timestamps
    end
    add_index :orders, :meal_id
  end
end
