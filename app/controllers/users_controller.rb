class UsersController < ApplicationController
  skip_before_action :require_login
  
  def new
    @user = User.new
  end
  def create
    if User.create(params[:user].permit(:email, :password, :name, :birthday,:address,:city,:state,:zip,:phone))
      redirect_to authentications_new_path, notice: "Account Created. Please log in above."
    else
      render :new, notice: "Signup failed. Please try again."
    end
  end
  
end