class Api::V1::ReservationsController < ApplicationController

  def create
    find_user
    @reservation = Reservation.new(dining_experience_id: params['id'], user_id: @user.id, date: Date.today)
    @reservation.status = 'reserved'
      if @reservation.save
        render json: @reservation
      else
        render json: { status: 404 }
      end
  end


  def show
  end

  def index

    available_listings = Reservation.find_available_listings(Date.parse(params["date"]))
    render json: available_listings
  end

  private

  def reservation_params
    params.permit(:date, :status)
  end
end

# t.integer  "dining_experience_id"
# t.integer  "user_id"
# t.date     "date"
# t.string   "status",
