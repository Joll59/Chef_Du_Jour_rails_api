class Api::V1::MyDiningExperiencesController < ApplicationController

  def index
    user = find_user
    users_dining_experiences = user.dining_experiences
    render json: users_dining_experiences
  end

end
