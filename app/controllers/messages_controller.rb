class MessagesController < ApplicationController
  #basic CRUD functionality
  def index
    @topics = Topic.all
    @selected_topic = params[:topic]

    #@message = Message.all
    if !@selected_topic
      @message = Message.all
    else
      @message = Topic.find(@selected_topic).messages
    end
  end

  def new
    @message = Message.new
    @topics = Topic.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params[:message].permit(:subject, :message_body, :topic))
    @message.user = current_user
    @message.save
    redirect_to messages_path
  end

  def destroy
    Message.find(params[:id]).destroy
  end

end