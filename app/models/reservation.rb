class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :dining_experience

  def self.find_available_listings(selected_date)
    booked_listings = []

    Reservation.find_each do |reservation|
      if reservation.date == selected_date
        booked_listings << reservation.dining_experience
      end
    end

    all_listings = DiningExperience.all
    available_listings = all_listings - booked_listings
  end

  def self.available_reservations
      Reservation.joins(:dining_experience).where(status: "available")
  end
end

###THIS WORKS TOO
