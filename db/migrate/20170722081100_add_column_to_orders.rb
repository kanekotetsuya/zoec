class AddColumnToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :product, :integer, null: false
    add_column :orders, :cart_id, :integer, null: false
  end
end
