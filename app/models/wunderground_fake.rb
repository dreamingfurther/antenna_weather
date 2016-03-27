class WundergroundFake
  DEFAULT_SINGLE_HOUR = {
    "response" => {
      "version"=>"0.1",
      "termsofService"=>"http://www.wunderground.com/weather/api/d/terms.html",
      "features"=>{"hourly10day"=>1}
    },
    "hourly_forecast" => [
      {
        "FCTTIME"=>
        {
           "hour"=>"24",
           "hour_padded"=>"14",
           "min"=>"00",
           "min_unpadded"=>"0",
           "sec"=>"0",
           "year"=>"2016",
           "mon"=>"3",
           "mon_padded"=>"03",
           "mon_abbrev"=>"Mar",
           "mday"=>"27",
           "mday_padded"=>"27",
           "yday"=>"86",
           "isdst"=>"1",
           "epoch"=>"1459101600",
           "pretty"=>"2:00 PM EDT on March 27, 2016",
           "civil"=>"2:00 PM",
           "month_name"=>"March",
           "month_name_abbrev"=>"Mar",
           "weekday_name"=>"Sunday",
           "weekday_name_night"=>"Sunday Night",
           "weekday_name_abbrev"=>"Sun",
           "weekday_name_unlang"=>"Sunday",
           "weekday_name_night_unlang"=>"Sunday Night",
           "ampm"=>"PM",
           "tz"=>"",
           "age"=>"",
           "UTCDATE"=>""
         }
      }]
  }
  @@ten_day_response_data = DEFAULT_SINGLE_HOUR
  cattr_accessor :ten_day_response_data

  def self.hourly10day_for(location_info)
    @@ten_day_response_data
  end

  def self.clear
    @@ten_day_response_data = DEFAULT_SINGLE_HOUR
  end
end
