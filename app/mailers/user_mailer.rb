class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def registration_confirmation(user)
    @hola=user
   mail(:to => "jorge161990@hotmail.com", :subject => "Reservacion")
  end
end
