class VisitorsController < ApplicationController
  def chat
    @messages = Message.all
  end
end
