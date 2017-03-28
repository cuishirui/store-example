class Product < ApplicationRecord

  has_many :cart_items
  has_many :carts, through: :cart_items, source: :cart

  has_many :size_items
  has_many :sizes, through: :size_items, source: :size 
end
