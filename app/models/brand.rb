class Brand < ActiveRecord::Base
  has_many :shoes, dependent: :destroy

  validates :name,   presence: true
end