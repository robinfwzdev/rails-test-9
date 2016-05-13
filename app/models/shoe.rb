class Shoe < ActiveRecord::Base
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, allow_blank: true }
end