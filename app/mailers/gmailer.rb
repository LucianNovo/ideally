class Gmailer < ActionMailer::Base
  default from: "lucian.novo@gmail.com"
  def signup_notification(user)
  	mail(
  		to: user.email,
  		subject: "Welcome to My Awesome Site"
  		)
  end
end