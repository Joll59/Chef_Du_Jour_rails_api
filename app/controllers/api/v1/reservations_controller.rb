class Api::V1::ReservationsController < ApplicationController

  def create
    user_id = find_user.id
    selected_date = Date.parse(params["date"])
    @reservation = Reservation.new(dining_experience_id: params['id'], user_id: user_id, date: selected_date)
      if @reservation.save
        render json: @reservation
      else
        render json: { status: 404 }
      end
  end


  def show
    user_id = find_user.id
    reservation = Reservation.where(user_id: user_id)
    render json: reservation
  end

  def index
    selected_date = Date.parse(params["date"])
    available_listings = Reservation.find_available_listings(selected_date)
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
