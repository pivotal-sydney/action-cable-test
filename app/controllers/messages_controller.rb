class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params.require(:message).permit(:message))

    redirect_to messages_url
  end
end
