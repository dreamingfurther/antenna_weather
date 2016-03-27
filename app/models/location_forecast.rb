class LocationForecast
  def self.all
    # TODO: This will eventually return the forecast of each location
    Location.all
  end

  def average_windspeed_for_day(days_from_today)
    "3mph"
  end
end
