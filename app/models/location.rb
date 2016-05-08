class Location < ActiveRecord::Base
  UPCOMING_FORECAST_DAYS = [0,1,2,3]

  def info
    "#{state}/#{town_name}"
  end

  def average_windspeed_for_evening(days_from_today)
    astronomy = WundergroundWrapper.new(self).astronomy
    sunset = astronomy['moon_phase']['sunset']['hour'].to_i

    date = Date.today.day + days_from_today
    hourly = WundergroundWrapper.new(self).hourly10day['hourly_forecast']
    day_data = hourly.select { |hour| hour['FCTTIME']['mday'].to_i == date }
    evenings = day_data.select { |hour| hour['FCTTIME']['hour'].to_i > sunset }
    evening_wind = evenings.map { |hour| hour['wspd']['english'].to_i }

    mph = evening_wind.sum / evening_wind.count
    "#{mph}mph"
  end

  def average_windspeed_for_morning(days_from_today)
    astronomy = WundergroundWrapper.new(self).astronomy
    sunrise = astronomy['moon_phase']['sunrise']['hour'].to_i

    date = Date.today.day + days_from_today
    hourly = WundergroundWrapper.new(self).hourly10day['hourly_forecast']
    day_data = hourly.select { |hour| hour['FCTTIME']['mday'].to_i == date }
    mornings = day_data.select { |hour| hour['FCTTIME']['hour'].to_i < sunrise }
    morning_wind = mornings.map { |hour| hour['wspd']['english'].to_i }

    if morning_wind.count == 0
      "none"
    else
      mph = morning_wind.sum / morning_wind.count
      "#{mph}mph"
    end
  end
end
