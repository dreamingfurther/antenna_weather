class DashboardController < ApplicationController
  def index
    @location_forecasts = LocationForecast.all
  end
end
