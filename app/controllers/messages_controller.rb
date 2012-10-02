class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      MessageMailer.send_message(@message).deliver
      redirect_to new_message_path, notice: "Your message has been sent successfully!"
    else
      render :new
    end
  end
end
