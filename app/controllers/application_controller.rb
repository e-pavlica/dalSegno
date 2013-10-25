class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :authenticate_user

  helper_method :current_user

  before_action :require_login



  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def authenticate_user
    if session[:newuser]
    else
      redirect_to authentications_new_path unless current_user
    end
  end

  private

  def require_login
    unless current_user
      redirect_to authentications_new_path
    end
  end



end
