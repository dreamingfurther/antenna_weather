class WundergroundFake
  DEFAULT_FORECAST_DATA = JSON.parse(File.read(Rails.root.join("spec/fixtures/10_day_forecast_data.json")))
  DEFAULT_ASTRONOMY_DATA = JSON.parse(File.read(Rails.root.join("spec/fixtures/astronomy_data.json")))

  @@ten_day_response_data = DEFAULT_FORECAST_DATA
  @@astronomy_data = DEFAULT_ASTRONOMY_DATA
  cattr_accessor :ten_day_response_data

  def self.hourly10day_for(location_info)
    @@ten_day_response_data
  end

  def self.astronomy(location_info)
    @@astronomy_data
  end

  def self.clear
    @@ten_day_response_data = DEFAULT_FORECAST_DATA
    @@astronomy_data = DEFAULT_ASTRONOMY_DATA
  end
end
