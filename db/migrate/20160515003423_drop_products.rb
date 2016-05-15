class DropProducts < ActiveRecord::Migration
  def up
    drop_table :products
  end

  def down
    create_table :products do |t|
      t.string     :name
      t.string     :sku
      t.float      :price
      t.attachment :picture
      t.references :brand

      t.timestamps
    end
  end
end
