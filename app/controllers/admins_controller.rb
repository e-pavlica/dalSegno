class AdminsController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.find(params[:id])
    @admin = Admin.new(is_admin?: true)
    @user.admin = @admin
    @admin.save
    redirect_to admins_path, notice: @user.name + " is now an admin."
  end

end