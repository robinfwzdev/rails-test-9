class RenameCodeToSku < ActiveRecord::Migration
  def self.up
    rename_column :shoes, :code, :sku
  end

  def self.down
    rename_column :shoes, :sku, :code
  end
end
