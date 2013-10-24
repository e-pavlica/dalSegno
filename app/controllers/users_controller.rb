class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    User.create(params[:user].permit(:email, :password))
    redirect_to action:"index", controller:"messages"
  end
  
end