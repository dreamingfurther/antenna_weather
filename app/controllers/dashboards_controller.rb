class DashboardsController < ApplicationController
  def index
    @location_forecasts = LocationForecast.all
  end
end
