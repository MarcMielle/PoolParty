class SwimmingPoolsController < ApplicationController

  # GET /swimming_pool/1
  def show
    @swimming_pool = SwimmingPool.find(params[:id])
  end

end
