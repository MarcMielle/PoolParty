class ReservationsController < ApplicationController
  def index
    # Reservations where le user est == au current_user
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
    @swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # une reservation a:
    #   starting_date //input form
    #   ending_date //input form
    #   renter_id
    #   swimming_pool_id //missing
    #   status //missing
    #   total_price //missing

    # associer a user
    @reservation.user = current_user
    # lier resa a swimming pools: recuperer id
    @reservation.swimming_pool = SwimmingPool.find(params[:swimming_pool_id])

    # valeur a status: pending
    @reservation.status = "Pending"
    # valeur a total_price: multiplication prix / jour

    @reservation.total_price = (@reservation.ending_date - @reservation.starting_date).to_i * @reservation.swimming_pool.price_per_day # price_per_day * (date fin - date debut)

    @reservation.save!
    # no need for app/views/restaurants/create.html.erb
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:starting_date, :ending_date, :total_price)
  end

end
