class AuthenticationsController < ApplicationController
  #only call into
  before_action :authenticate_user, only: [:destroy]

  def new
    #are they already logged in?
    if current_user
      redirect_to users_url
    else
      @user = User.new
      @wrong_pass = params[:wrong_pass]
      @wrong_email = params[:wrong_email]
      render :new
    end
  end

  def newuser
    session[:newuser] = true
    redirect_to new_user_path
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
        redirect_to authentications_new_path, notice: "Invalid Password"
      end
    else 
      flash.now.alert = "Unable to sign you in."
      redirect_to authentications_new_path, notice: "Invaild Email"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to authentications_new_path,
     notice: "You signed out."
  end

  
end