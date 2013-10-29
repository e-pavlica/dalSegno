class RepliesController < ApplicationController

  def show
    @reply = Reply.find(params[:id])
  end

  def create
    @message = Message.find(params[:message_id])
    @reply = @message.replies.new(params[:reply].permit(:reply_text))
    @reply.user = current_user
    @reply.save

    redirect_to messages_path
  end

  def new
    @reply = Reply.new
  end

end
