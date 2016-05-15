class ShoeFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :brand_ids, :min_price, :max_price, :sort

  def initialize(option, sort = '')
    return if option.nil?
    @brand_ids  = option[:brand_ids]
    @min_price  = option[:min_price]
    @max_price  = option[:max_price]
    @sort       = sort
  end

  def result
    shoes = Shoe.all
    shoes = shoes.find_by_brands(brand_ids)         if brand_ids.present? and brand_ids.any? &:present?
    shoes = shoes.find_by_min_price(min_price.to_f) if min_price.present?
    shoes = shoes.find_by_max_price(max_price.to_f) if max_price.present?
    shoes = shoes.order(name: sort.to_sym)          if sort.present?
    shoes
  end

  def persisted?
    false
  end
end