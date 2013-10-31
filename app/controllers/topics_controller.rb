class TopicsController < ApplicationController


  def new
    @topic = Topic.new
  end

  def create
    Topic.create(params[:topic].permit(:topic_name))
    redirect_to admins_path
  end

  def show
    redirect_to messages_path(topic: params[:id])
  end

  def index
    @topics = Topic.all
    @message = Message.all
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to admins_path
  end



end
