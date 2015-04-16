class LocationDetailsController < ApplicationController

  def index

    @location = LocationDetail.new
    @locations = LocationDetail.all

  end

  def create
    @location = LocationDetail.create(location_params)
    redirect_to root_path
  end



  private
  def location_params
    params.require(:location).permit(:latitude, :longitude)
  end
end
