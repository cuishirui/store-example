class AddQuantityToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :quantity, :integer
    add_column :products, :price,    :decimal
  end
end
