class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    Message.create!(params.require(:message).permit(:message))
    MessagesChannel.broadcast

    redirect_to messages_url
  end
end
