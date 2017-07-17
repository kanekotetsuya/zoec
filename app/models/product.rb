class Product < ApplicationRecord
  has_many :orders, through: :products_orders

  validates :product_code, presence: true, uniqueness: true

  mount_uploader :image, ImageUploader
end
