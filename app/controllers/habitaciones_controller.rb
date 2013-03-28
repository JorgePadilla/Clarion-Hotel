class HabitacionesController < ApplicationController
  # GET /habitaciones
  # GET /habitaciones.json
  def index
    @habitaciones = Habitacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @habitaciones }
    end
  end

  # GET /habitaciones/1
  # GET /habitaciones/1.json
  def show
    @habitacione = Habitacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @habitacione }
    end
  end

  # GET /habitaciones/new
  # GET /habitaciones/new.json
  def new
    @habitacione = Habitacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @habitacione }
    end
  end

  # GET /habitaciones/1/edit
  def edit
    @habitacione = Habitacione.find(params[:id])
  end

  # POST /habitaciones
  # POST /habitaciones.json
  def create
    @habitacione = Habitacione.new(params[:habitacione])

    respond_to do |format|
      if @habitacione.save
        format.html { redirect_to @habitacione, notice: 'Habitacione was successfully created.' }
        format.json { render json: @habitacione, status: :created, location: @habitacione }
      else
        format.html { render action: "new" }
        format.json { render json: @habitacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /habitaciones/1
  # PUT /habitaciones/1.json
  def update
    @habitacione = Habitacione.find(params[:id])

    respond_to do |format|
      if @habitacione.update_attributes(params[:habitacione])
        format.html { redirect_to @habitacione, notice: 'Habitacione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @habitacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitaciones/1
  # DELETE /habitaciones/1.json
  def destroy
    @habitacione = Habitacione.find(params[:id])
    @habitacione.destroy

    respond_to do |format|
      format.html { redirect_to habitaciones_url }
      format.json { head :no_content }
    end
  end
end
