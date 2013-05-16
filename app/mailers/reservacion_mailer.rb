class ReservacionMailer < ActionMailer::Base
  default from: "from@example.com"
  

  
  def registration_confirmation(user)
    @hola=user
   mail(:to => "reservaciones@hotelclarionsps.com, francisco-molina@hotelclarionsps.com, sukeily-deras@hotelclarionsps.com", :subject => "Reservacion")
  end


end
