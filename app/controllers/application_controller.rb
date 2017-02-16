class ApplicationController < ActionController::API

  # we should rename this 'current_user'
  def find_user
    token = request.headers["HTTP_AUTHORIZATION"]
  	if token
  		user_info = Auth.decode(token)
  		@user ||= User.find(user_info['id'])
    end
  end
end
