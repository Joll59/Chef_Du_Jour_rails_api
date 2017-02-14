class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :dining_experience
end
