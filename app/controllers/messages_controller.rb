class MessagesController < ApplicationController

  #basic CRUD functionality
  def index
    @topics = Topic.all
    @selected_topic = params[:topic]

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
    @message = Message.new(message_params)
    @message.user = current_user
    @message.time = Time.now
    @message.save
    redirect_to messages_path
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(message_params)
    redirect_to @message
  end


  def destroy
    @message = Message.find(params[:id])
    @message.replies.destroy
    @message.destroy
    redirect_to admins_path
  end

  private

  def message_params
    params.require(:message).permit(:subject, :message_body, :topic)
  end

end