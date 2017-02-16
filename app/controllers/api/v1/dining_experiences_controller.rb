class Api::V1::DiningExperiencesController < ApplicationController

  def create
    user = find_user
    dining_experience = DiningExperience.new(dining_experience_params)
    dining_experience.user = user
    dining_experience.save

    render json: dining_experience

  end

  def index
    dining_experiences = DiningExperience.all
    render json: dining_experiences
  end

  def show
    user = find_user
    binding.pry
  end
  private

  def dining_experience_params
    params.permit(:title, :description, :price, :length)
  end

end
