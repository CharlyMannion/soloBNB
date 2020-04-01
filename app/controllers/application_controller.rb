class ApplicationController < ActionController::Base
  helper_method :current_user, :current_username

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def current_username
    if session[:user_id]
      current_user ||= User.find(session[:user_id])
      @current_username = current_user.username
    else
      @current_username = nil
    end
  end
end
