class AddColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :name, :string, null: false
    add_column :products, :product_code, :string, null: false, unique: true
    add_column :products, :product_category, :string, null: false
    add_column :products, :price, :integer, null: false
    add_column :products, :description, :text
    add_column :products, :image, :text, null: false
    add_column :products, :count, :integer, null: false
  end
end
