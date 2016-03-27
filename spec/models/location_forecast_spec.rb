require 'rails_helper'

describe LocationForecast do
  describe '.all' do
    it 'returns a forecast for every location' do
      expect(LocationForecast.all).to eq []
    end
  end
end
