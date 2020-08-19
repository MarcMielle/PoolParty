class ReservationsController < ApplicationController
  def index
    # Reservations where le user est == au current_user
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

end
