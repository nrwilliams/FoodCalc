class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.integer :category_id

      t.timestamps
    end
  end
end
