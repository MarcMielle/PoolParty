class SwimmingPoolsController < ApplicationController

  def index
    @swimming_pools = SwimmingPool.geocoded # returns swimming_pools with coordinates

    @markers = @swimming_pools.map do |swimming_pool|
      {
        lat: swimming_pool.latitude,
        lng: swimming_pool.longitude
      }
    end
  end

  # GET /swimming_pool/1
  def show
    @swimming_pool = SwimmingPool.find(params[:id])
  end

  # def index
  #   @swimmingpools = SwimmingPool.all
  # end

end