require 'rails_helper'

describe LocationForecast do
  describe '#average_windspeed_for_evening' do
    after(:each) do
      WundergroundFake.clear
    end

    it 'returns the average windspeed for the days out given' do
      location_forecast = LocationForecast.new(create(:location))

      expect(location_forecast.average_windspeed_for_evening(0)).to eq "3mph"
      expect(location_forecast.average_windspeed_for_evening(1)).to eq "6mph"
    end
  end

  describe '.all' do
    it 'returns a forecast for every location' do
      expect(LocationForecast.all).to eq []
    end
  end
end
