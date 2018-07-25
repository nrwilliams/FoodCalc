class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :category_id
      t.decimal :price, precision: 2, scale: 2

      t.timestamps
    end
  end
end
