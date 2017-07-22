class Product < ApplicationRecord
  belongs_to :order

  validates :product_code, presence: true, uniqueness: true

  mount_uploader :image, ImageUploader
end
