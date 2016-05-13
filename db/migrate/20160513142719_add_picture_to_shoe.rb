class AddPictureToShoe < ActiveRecord::Migration
  def self.up
    change_table :shoes do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :shoes, :picture
  end
end
