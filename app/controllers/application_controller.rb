class ApplicationController < ActionController::API


  def find_user
    token = request.headers["HTTP_AUTHORIZATION"]
	If  token
		user_info = Auth.decode(token)
		@current_user ||= User.find(user_info['id'])
  end

end
