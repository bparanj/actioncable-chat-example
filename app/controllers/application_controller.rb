class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_username
    cookies.signed[:username]
  end
  helper_method :current_username


  def current_username=(username)
    cookies.signed[:username] = username
  end
end
