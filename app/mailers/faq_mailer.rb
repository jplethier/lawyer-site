class FaqMailer < ActionMailer::Base

  default from: "brunarxavier@gmail.com"

  def contact_us(from_name, from_email, subject, message)
    @message = {from_name: from_name, from_email: from_email, subject: subject, message: message}
    mail to: 'brunarxavier@gmail.com', subject: "Contato Site", body: @message, content_type: "text/html"
  end
end
