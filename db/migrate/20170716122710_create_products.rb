class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, unique: true
      t.string :product_code, null: false, unique: true
      t.string :product_category, null: false
      t.integer :price, null: false
      t.text :description
      t.text :image, null: false
      t.integer :count
      t.timestamps
    end
  end
end
