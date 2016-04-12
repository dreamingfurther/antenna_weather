require 'rails_helper'

describe Forecast do
  describe '#day(days_from_now)' do
    it 'returns day object' do
      day_data = fake_10_day_data['hourly_forecast'].select { |day| day['FCTTIME']['mday'] == Date.today.day }
      forecast_day = double

      expect(ForecastDay).to receive(:new).with(day_data).and_return(forecast_day)
      expect(Forecast.new(fake_10_day_data).day(0)).to eq(forecast_day)
    end
  end
end
