class InglesController < ApplicationController
  # GET /ingles
  # GET /ingles.json
  def index
   I18n.locale='en'
   I18n.default_locale='en'
  end

  # GET /ingles/1
  # GET /ingles/1.json
  def show
    @ingle = Ingle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingle }
    end
  end

  # GET /ingles/new
  # GET /ingles/new.json
  def new
    @ingle = Ingle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingle }
    end
  end

  # GET /ingles/1/edit
  def edit
    @ingle = Ingle.find(params[:id])
  end

  # POST /ingles
  # POST /ingles.json
  def create
    @ingle = Ingle.new(params[:ingle])

    respond_to do |format|
      if @ingle.save
        format.html { redirect_to @ingle, notice: 'Ingle was successfully created.' }
        format.json { render json: @ingle, status: :created, location: @ingle }
      else
        format.html { render action: "new" }
        format.json { render json: @ingle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingles/1
  # PUT /ingles/1.json
  def update
    @ingle = Ingle.find(params[:id])

    respond_to do |format|
      if @ingle.update_attributes(params[:ingle])
        format.html { redirect_to @ingle, notice: 'Ingle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingles/1
  # DELETE /ingles/1.json
  def destroy
    @ingle = Ingle.find(params[:id])
    @ingle.destroy

    respond_to do |format|
      format.html { redirect_to ingles_url }
      format.json { head :no_content }
    end
  end
end
