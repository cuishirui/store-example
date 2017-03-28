class Size < ApplicationRecord

  has_many :size_items
  has_many :products, through: :size_items, source: :product
end
