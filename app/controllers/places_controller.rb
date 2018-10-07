class PlacesController < ApplicationController
  before_action :set_place, only: [:show]

  def index
    @places = Place.all
  end

  def show
  end

  def search
    @places = BeermappingApi.places_in(params[:city])
    if @places.empty?
      redirect_to places_path, notice: "No locations in #{params[:city]}"
    else
      render :index
    end
  end

  def set_place
    @place = BeermappingApi.places_in(params[:city]).select { |place| place.id == params[:id] }.first
  end
end
