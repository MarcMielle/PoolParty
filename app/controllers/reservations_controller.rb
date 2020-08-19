class ReservationsController < ApplicationController
  def index
    # Reservations where le user est == au current_user
    @reservations = current_user.reservations
  end
end
