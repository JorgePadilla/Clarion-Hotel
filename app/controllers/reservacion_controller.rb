class ReservacionController < ApplicationController
  def index
   # flash.now[:notice] = 'Message sent!'
      @correo=Correo.new(:id=>"1")
  end

    
    def show
      @correo=Correo.new(params[:correo])
     
  
    UserMailer.registration_confirmation(@correo).deliver
   render 'index'
   #@hola='hola'
   #  UserMailer.registration_confirmation("jp").deliver
   # redirect_to :action => "index", :controller => "home"
  end
   

end
