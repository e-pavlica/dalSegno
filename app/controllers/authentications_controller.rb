class AuthenticationsController < ApplicationController
  #only call into
  before_action :authenticate_user, only: [:destroy]

  def new
    #are they already logged in?
    if current_user
      redirect_to users_url
    else
      @user = User.new
      render :new
    end
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user
      #authenticate user
      if user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect_to messages_url
      else
        flash.now.alert = "Unable to sign you in."
        render :new
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to authentications_new_path,
     notice: "You signed out."
  end

  
end