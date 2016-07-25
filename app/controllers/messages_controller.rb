class MessagesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  def create
    message = current_user.messages.new(params[:message].permit!)
    authorize message
    message.save
  end
end
