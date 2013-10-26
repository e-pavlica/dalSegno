class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def show
    @user = current_user
  end

  def new
    @user = User.new
  end
  def create
    if User.create(params[:user].permit(:email.downcase, :password, :name, :birthday,:address,:city,:state,:zip,:phone)).valid?
      redirect_to authentications_new_path, notice: "Account Created. Please log in above."
    else
      redirect_to new_user_path, notice: "Signup failed. Please try again."
    end
  end
  
end