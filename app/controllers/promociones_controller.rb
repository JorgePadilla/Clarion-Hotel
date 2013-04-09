class PromocionesController < ApplicationController
  def index
  @advertisements = Advertisement.all
  end
end
