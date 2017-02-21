class DiningExperience < ApplicationRecord
  has_many :reservations
  #DiningExperience.First.users
  #returns all users (think consumers) who have reserved this expeirence
  has_many :users,  through: :reservations

  #DiningExperience.First.user
  #returns the user who created this experience
  belongs_to :user



  def self.reservations
    DiningExperience
  end
end


##THIS WORKS!!!!!!!
