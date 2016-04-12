class Admin::DashboardsController < AdminController
  def show
    @location = Location.new
    @location_forecasts = LocationForecast.all
  end
end
