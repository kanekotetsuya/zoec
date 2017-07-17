class Product < ApplicationRecord
  has_many :orders, through: :products_orders

  validates :product_code, presence: true, uniqueness: true
end
