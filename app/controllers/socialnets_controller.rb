class SocialnetsController < ApplicationController

  def create
    @socialnet = Socialnet.new(social_params)
    @user = current_user
    @user.socialnet = @socialnet
    @socialnet.save
    redirect_to user_path(current_user)
  end


  def update
    @socialnet = current_user.socialnet
    @socialnet.update_attributes(social_params)
    redirect_to user_path(current_user)
  end

  private

  def social_params
    params.require(:socialnet).permit(:twitter, :facebook, :gplus, :github, :linkedin)
  end

end