class AddColumnToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :product_id, :integer, null: false
    add_column :orders, :user_id, :integer, null: false
    add_column :orders, :cart_id, :integer, null: false, default: 0
  end
end
