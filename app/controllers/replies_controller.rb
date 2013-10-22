class RepliesController < ApplicationController
  def show
    @reply = Reply.find(params[:id])
  end

  def create
    @message = Message.find(params[:message_id]).
    @reply =  @message.replies.create(params[:reply].permit(:reply_text))

    redirect_to :action => "messages#index"
  end

  def new
    @reply = Reply.new
  end

end
