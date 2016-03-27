require 'rails_helper'

describe LocationForecast do
  describe '#average_windspeed_for_day' do
    after(:each) do
      WundergroundFake.clear
    end

    it 'returns the average windspeed for the days out given' do
      file = File.read(Rails.root.join("spec/fixtures/10_day_forecast_data.json"))
      WundergroundFake.ten_day_response_data = JSON.parse(file)
      location_forecast = LocationForecast.new

      expect(location_forecast.average_windspeed_for_day(0)).to eq "3mph"
      expect(location_forecast.average_windspeed_for_day(1)).to eq "6mph"
    end
  end

  describe '.all' do
    it 'returns a forecast for every location' do
      expect(LocationForecast.all).to eq []
    end
  end
end
