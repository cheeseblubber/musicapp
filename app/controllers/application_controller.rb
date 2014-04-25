class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	return nil if session[:session_token].nil?
  	@current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
  	session[:session_token] == current_user.session_token
  end

  def login!
  	session_token[:session_token] = current_user.reset_session_token!
  end
end
