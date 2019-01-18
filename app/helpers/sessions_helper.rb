module SessionsHelper

  # login with argument.
  def log_in(user)
    session[:user_id] = user.id
  end

  # if user logged in, return user logged in.
  def current_user
    if session[:user_id]
      # @current_user = @current_user || User.find_by(id: session[user_id])
      @current_user ||= User.find_by(id: session[user_id])
    end
  end
end
