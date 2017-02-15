class ReservationsController < ApplicationController

  def create(reservation_params)
    @reservation = Reservation.new(reservation_params)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :status)
  end
end
