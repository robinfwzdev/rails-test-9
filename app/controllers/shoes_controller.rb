class ShoesController < ApplicationController
  def index
    @shoe_filter = ShoeFilter.new(shoes_search_params, cookies[:shoes_sort])
    @shoes       = @shoe_filter.result
    @shoes       = @shoes.paginate(page: params[:page], per_page: 18)
  end

  private

  def shoes_search_params
    return nil if params[:shoe_filter].nil?
    params[:shoe_filter].permit(
                                  :min_price,
                                  :max_price,
                                  :brand_ids => []
                                  )
  end  
end