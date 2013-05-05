class Gmailer < ActionMailer::Base
  default from: "lucian.novo@gmail.com"
  def signup_notification(user)
  	mail(
  		to: user.email,
  		subject: "Welcome to My Awesome Site",
  		# recipients: "<#{user.email}>",
    	# from:       "My Forum ",
    	# subject:    "Please activate your new account",
    	# sent_on:    Time.now,
    	# body:       "Don't care."
  		)
  end
end