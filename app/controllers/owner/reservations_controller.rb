class Owner::ReservationsController < ApplicationController
  def index
    # Bookings qui correspond aux swimming pools possedees par le current user
    @reservations = Reservation.where(swimming_pool_id: current_user.swimming_pools.pluck(:id))
  end

  def accept
    # Find reservation
    @reservation = Reservation.find(params[:id])
    # Change its status to accept
    @reservation.update(status: "Accepted")
    # Redirect to same page
    redirect_to owner_reservations_path
  end

  def decline
    # Find reservation
    @reservation = Reservation.find(params[:id])
    # Change its status to decline
    @reservation.update(status: "Declined")
    # Redirect to same page
    redirect_to owner_reservations_path
  end
end
