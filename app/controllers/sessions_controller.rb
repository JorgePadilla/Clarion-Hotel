class SessionsController < ApplicationController



def new
  
  @advertisements = Advertisement.all


  


end

def create
  @advertisements = Advertisement.all
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to advertisements_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to promociones_url, :notice => "Logged out!"
end



def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == "hotelclarionsps" && password == "railsapplication"
  end
end


end
