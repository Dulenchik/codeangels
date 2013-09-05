class RequestMailer < ActionMailer::Base
  default from: "example@example.com"

  def request_mail(name, email, select)
    @name, @email, @select = name, email, select
    mail(to: @email, subject: "New request")
  end
end
