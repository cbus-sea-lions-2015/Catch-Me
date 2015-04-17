class LocationDetailsController < ApplicationController

  def index
    @location = LocationDetail.new
    @locations = LocationDetail.all
  end

  def create
    @location = LocationDetail.create!(location_params)
    redirect_to root_path
  end

  def all_locations_for_map
    all_locations = []
    LocationDetail.all.each do |location|
      all_locations.push(
        {longitude: location.longitude,latitude: location.latitude}
        )
    end
    render nothing: true, json: all_locations.to_json
  end

  private
  def location_params
    params.require(:location).permit(:latitude, :longitude)
  end
end
