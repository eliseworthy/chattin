class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def new
    @message = Message.new
  end
  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_path
    else
      flash[:notice] = "boom"
      redirect_to action: :new
      # render template: "messages/new",
      #         notice: "You suck."
    end
  end
end
