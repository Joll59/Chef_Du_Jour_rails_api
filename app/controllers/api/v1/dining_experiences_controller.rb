class Api::V1::DiningExperiencesController < ApplicationController

  def create
    user = find_user
    dining_experience = DiningExperience.new(dining_experience_params)
    dining_experience.user = user
    dining_experience.save

    render json: dining_experience

  end

##aciont to return index of my dining expiriences



##returns ALL dining experiences
  def index
    dining_experiences = DiningExperience.all
    render json: dining_experiences
  end

###show a redirect from the create action // show a specific DE
  def show
    binding.pry
    user = find_user
    dining_experience =

  end

  private

  def dining_experience_params
    params.permit(:title, :description, :price, :length)
  end

end
