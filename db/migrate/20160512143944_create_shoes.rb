class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :code
      t.string :name
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
