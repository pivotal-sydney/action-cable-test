class MessagesChannel < ApplicationCable::Channel
  def self.broadcast
    broadcast_to "messages",
      messages: MessagesController.render(
        partial: 'messages/message_list',
        locals: { messages: Message.all }
    )
  end

  def subscribed
    stream_from "messages:messages"
  end

  def unsubscribed
  end
end
