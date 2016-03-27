class Location < ActiveRecord::Base
  UPCOMING_FORECAST_DAYS = [0,1,2,3]
  def info
    "#{state}/#{town_name}"
  end
end
