class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def registration_confirmation(user)
   mail(:to => "jorge161990@hotmail.com", :subject => "Registered")
  end
end
