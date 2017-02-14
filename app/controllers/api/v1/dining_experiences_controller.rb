class DiningExperiencesController < ApplicationController

  def create
    @dining_experience = Dining_Experience.create(dining_experience_params)
    #create method to decode JWT token. set property = User.find(:id)
  end

  private

  def dining_experience_params
    params.require(:dining_experience)permit(:description, :price, :length)
  end

end
