class Api::V1::MyDiningExperiencesController < ApplicationController

  def index
    user = find_user
    users_created_experiences = user.chef_created_experiences
    render json: users_created_experiences
  end

end
