class AdminsController < ApplicationController

  before_action :require_admin


  def index
    @users = User.all
    @messages = Message.all
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
    @user = User.find(params[:id])
    @admin = Admin.new(is_admin?: true)
    @user.admin = @admin
    @admin.save
    redirect_to admins_path, notice: @user.name + " is now an admin."
  end

  def destroy
    @user = User.find(params[:id])
    @user.admin.destroy
    redirect_to admins_path, notice: @user.name + " is no longer an admin."
  end

  def require_admin
    unless current_user.admin
      redirect_to authentications_new_path, notice: "You do not have permission to access to that page."
    end
  end

end