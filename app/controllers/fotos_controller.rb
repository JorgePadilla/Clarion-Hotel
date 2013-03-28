class FotosController < ApplicationController
  
 def upload

 @foto = Foto.new

end

   

  def new 
   @foto = Foto.new
  end
  
  def create
    @foto = Foto.new(params[:foto])
    if @foto.save
      flash[:notice] = "Successfully created product."
      redirect_to @foto
    else
      render :action => 'upload'
    end
  end
  
   def update
    @foto = Foto.find(params[:id])
    if @foto.update_attributes(params[:product])
      flash[:notice] = "Successfully updated product."
      redirect_to @foto
    else
      render :action => 'upload'
    end
  end
end
