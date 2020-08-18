class SwimmingPoolsController < ApplicationController
  def show
  end

  def index
    @swimmingpools = SwimmingPool.all
  end
end
