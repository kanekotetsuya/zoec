class ProductsOrder < ActiveRecord::Migration[5.1]
  def change
    drop_table :products_orders
  end
end
