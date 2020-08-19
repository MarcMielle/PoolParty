class ReservationsController < ApplicationController
  def index
    # Reservations where le user est == au current_user
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to swimming_pools_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:starting_date, :ending_date, :total_price)
  end

end
