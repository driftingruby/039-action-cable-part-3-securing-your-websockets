class MessagesController < ApplicationController
  def create
    message = Message.create(params[:message].permit!)
    # ActionCable.server.broadcast "chat", { 
    #   message: MessagesController.render(
    #     partial: 'message', 
    #     locals: { message: message }
    #   ).squish 
    # }
  end
end
