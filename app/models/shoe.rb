class Shoe < ActiveRecord::Base
  belongs_to :brand

  validates :name, presence: true
  validates :sku, presence: true
  validates :price, numericality: { greater_than: 0, allow_blank: true }

  has_attached_file :picture,
    styles: { thumb: '300x300#>' },
    default_url: "shoes/missing.png"
  validates_attachment :picture,
    content_type: {content_type: /\Aimage\/.*\Z/},
    size: { in: 0..5.megabytes, message: 'Photo size too large. Please limit to 5 mbs.' }

  def self.find_by_brands(brand_ids)
    where(brand: brand_ids)
  end

  def self.find_by_min_price(min_price)
    where("price >= ?", min_price)
  end

  def self.find_by_max_price(max_price)
    where("price <= ?", max_price)
  end  
end