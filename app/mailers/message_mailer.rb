class MessageMailer < ActionMailer::Base
  def send_message(message)
    @message = message
    mail(to: "sid99us@yahoo.com", from: @message.email, subject: "Request from your website")
  end
end
