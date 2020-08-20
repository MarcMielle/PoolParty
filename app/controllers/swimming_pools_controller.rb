class SwimmingPoolsController < ApplicationController

  def index
    @swimming_pools = SwimmingPool.geocoded # returns swimming_pools with coordinates

    @markers = @swimming_pools.map do |swimming_pool|
      {
        lat: swimming_pool.latitude,
        lng: swimming_pool.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { swimming_pool: swimming_pool })
      }
    end
  end

  # GET /swimming_pool/1
  def show
    @swimming_pool = SwimmingPool.find(params[:id])
  end

  def new
    @swimming_pool = SwimmingPool.new
  end

  def create
    @swimming_pool = SwimmingPool.new(swimming_pool_params)
    @swimming_pool.user = current_user
    @swimming_pool.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to swimming_pools_path
  end

  private

  def swimming_pool_params
    params.require(:swimming_pool).permit(:location, :name, :description, :price_per_day, :photo)
  end



end
