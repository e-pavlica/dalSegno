class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  #methods for new user creation
  def new
    @user = User.new
  end
  def create
    a = User.create(user_params)
    if a.valid?
      redirect_to authentications_new_path, notice: "Account Created. Please log in above."
    else
      redirect_to new_user_path, notice: a.errors.full_messages.to_sentence
    end
  end


  #methods for editing a user's profile
  def edit
    if @user != current_user
      redirect_to @user, notice: "you can only edit your own profile."
    end
  end
  def update
    @user.update_attributes(user_params)
    redirect_to @user, notice: "Your profile was successfully updated."
  end

  #method to delete a user
  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to admins_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :birthday,:address,:city,:state,:zip,:phone)
  end

  def set_user
    @user = User.find(params[:id])
  end
end