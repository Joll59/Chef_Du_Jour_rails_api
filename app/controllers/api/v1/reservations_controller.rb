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
    booked_listings = []
    todays_date = Date.today #params["date"]
    Reservation.find_each do |reservation|
      if reservation.date == todays_date
        booked_listings << reservation.dining_experience
      end
  end
   all_listings = DiningExperience.all
   available_listings = all_listings - booked_listings
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
