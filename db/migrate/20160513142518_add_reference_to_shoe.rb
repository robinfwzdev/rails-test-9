class AddReferenceToShoe < ActiveRecord::Migration
  def change
    add_reference :shoes, :brand, index: true
  end
end
