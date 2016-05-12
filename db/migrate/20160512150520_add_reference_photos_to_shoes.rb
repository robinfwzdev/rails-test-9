class AddReferencePhotosToShoes < ActiveRecord::Migration
  def change
    add_reference :photos, :shoe, index: true
  end
end
