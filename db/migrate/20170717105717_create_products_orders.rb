class CreateProductsOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :products_orders do |t|

      t.timestamps
    end
  end
end
