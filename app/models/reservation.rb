class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :dining_experience


  def self.available_reservations
      Reservation.joins(:dining_experience).where(status: "available")
  end
end

###THIS WORKS TOO
