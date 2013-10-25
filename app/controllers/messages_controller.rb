class MessagesController < ApplicationController
  #basic CRUD functionality
  def index
    @topics = Topic.all
    @selected_topic = params[:topic]

    #@message = Message.all
    if !@selected_topic
      @message = Message.all
    else
      @message = Topic.find(@selected_topic).tmessages
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
    @message = Message.create(params[:message].permit(:subject, :message_body))
    # Topic.find(params[:message].permit(:mtopic)).tmessages << @message
    redirect_to :action=> "index"
  end

  def destroy
    Message.find(params[:id]).destroy
  end

end