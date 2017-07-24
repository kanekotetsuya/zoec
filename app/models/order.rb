class Order < ApplicationRecord
  belongs_to :user
  has_many :products

  serialize :product_array
end
