class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :kana_name, :string, null: false
    add_column :users, :postal_code, :integer, null: false
    add_column :users, :address1, :string, null: false
    add_column :users, :address2, :string, null: false
    add_column :users, :phone, :string, null: false
    add_column :users, :authority, :integer, null: false, default: 0
  end
end
