class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.date :date
      t.string :owner
      t.string :instructions
      t.string :restaurant
      t.string :menuurl

      t.timestamps
    end
  end
end
