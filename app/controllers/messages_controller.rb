class MessagesController < ApplicationController
  #basic CRUD functionality
  def index
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.create(params[:message].permit(:subject, :message_body))
    redirect_to :action=> "index"
  end

  def destroy
    Message.find(params[:id]).destroy
  end

end