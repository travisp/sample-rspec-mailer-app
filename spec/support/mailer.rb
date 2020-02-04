class CustomTestMailer < Mail::TestMailer
  def deliver!(mail)
    mail.subject = "I now have a new subject"
    super(mail)
  end
end

ActionMailer::Base.add_delivery_method :custom_test, CustomTestMailer
