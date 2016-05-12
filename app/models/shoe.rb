class Shoe < ActiveRecord::Base
  has_many :photos
  
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, allow_blank: true }
end