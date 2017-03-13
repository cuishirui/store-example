class Product < ApplicationRecord
  validates :title, :description, presence: true

  has_many :cart_items
  has_many :carts , through: :cart_items, source: :cart 
end
