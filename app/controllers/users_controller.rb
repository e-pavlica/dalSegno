class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  #methods for new user creation
  def new
    @user = User.new
  end
  def create
    if User.create().valid?
      redirect_to authentications_new_path, notice: "Account Created. Please log in above."
    else
      redirect_to new_user_path, notice: "Signup failed. Please try again."
    end
  end


  #methods for editing a user's profile
  def edit
    if @user != current_user
      redirect_to @user, notice: "you can only edit your own profile."
    end
  end
  def update
    @user.update_attributes(item_params)
    redirect_to @user, notice: "Your profile was successfully updated."
  end

  private

  def user_params
    params.require(:user).permit(:email.downcase, :password, :name, :birthday,:address,:city,:state,:zip,:phone)
  end

  def set_user
    @user = User.find(params[:id])
  end
end