class LocationForecast
  def initialize(location)
    @location = location
  end

  def self.all
    # TODO: This will eventually return the forecast of each location
    Location.all
  end

  def average_windspeed_for_evening(days_from_today)
    forecast.day(days_from_today).evening
  end

  private

  def forecast
    @forecast ||= Forecast.new(ten_day_forecast_data)
  end

  def ten_day_forecast_data
    @ten_day_forecast_data ||= WundergroundWrapper.new(@location).hourly10day
  end
end
