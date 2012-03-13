class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  # In the case of Ajax request, Rails automatically calls a JavaScript Embedded Ruby (.js.erb) file with the same name as the action, 
  # i.e., app/views/messages/create.js.erb
  def create
    @message = Message.create!(params[:message])
  end

end
