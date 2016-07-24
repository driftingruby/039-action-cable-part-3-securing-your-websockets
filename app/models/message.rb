class Message < ApplicationRecord
  # after_create_commit { 
  #   ActionCable.server.broadcast "chat", { 
  #     message: MessagesController.render(
  #       partial: 'message', 
  #       locals: { message: message }
  #     ).squish 
  #   }
  # }
  
  after_create_commit { MessageBroadcastJob.perform_later(self) }

  # rails g job message_broadcast
end
