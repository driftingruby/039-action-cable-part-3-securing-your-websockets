class VisitorsController < ApplicationController
  before_action :authenticate_user!, only: :chat

  def index
  end

  def chat
    @messages = Message.includes(:user).all
  end
end
