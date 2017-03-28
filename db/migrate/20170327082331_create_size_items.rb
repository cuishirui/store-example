class CreateSizeItems < ActiveRecord::Migration[5.0]
  def change
    create_table :size_items do |t|
      t.integer :product_id
      t.integer :size_id
      
      t.timestamps
    end
  end
end
