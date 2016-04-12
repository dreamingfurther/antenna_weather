class WundergroundFake
  DEFAULT_DATA = JSON.parse(File.read(Rails.root.join("spec/fixtures/10_day_forecast_data.json")))

  @@ten_day_response_data = DEFAULT_DATA
  cattr_accessor :ten_day_response_data

  def self.hourly10day_for(location_info)
    @@ten_day_response_data
  end

  def self.clear
    @@ten_day_response_data = DEFAULT_DATA
  end
end
