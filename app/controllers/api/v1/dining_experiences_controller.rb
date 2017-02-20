class Api::V1::DiningExperiencesController < ApplicationController

  def create
    user = find_user
    dining_experience = DiningExperience.new(dining_experience_params)
    dining_experience.user = user
    dining_experience.save
    render json: dining_experience

  end

##aciont to return index of my dining expiriences



##returns available dining_experiences!
  def index
    # available_dining_experiences = DiningExperience.all
    available_dining_experiences = Reservation.available_reservations
    render json: available_dining_experiences
  end

###show a redirect from the create action // show a specific DE
  def show
    my_dining_experience = DiningExperience.find(params["id"])
    render json: my_dining_experience
  end

  private

  def dining_experience_params
    params.permit(:title, :description, :price, :length)
  end

end
