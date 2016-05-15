class DropPhotosTable < ActiveRecord::Migration
  def up
    drop_table :photos
  end

  def down
    create_table :photos do |t|
      t.attachment :picture
      t.references :shoe

      t.timestamps
    end
  end
end
