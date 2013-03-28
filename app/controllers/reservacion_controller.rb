class ReservacionController < ApplicationController
  def index
   
    flash.now[:notice] = 'Message sent!'
    UserMailer.registration_confirmation("jp").deliver
  end
    
    def show
     
   
    ReservacionMailer.registration_confirmation(@user).deliver
    redirect_to :action => "index", :controller => "home"
  end
   

end
