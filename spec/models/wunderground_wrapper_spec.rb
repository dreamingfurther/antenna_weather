require 'rails_helper'

describe WundergroundWrapper do
  describe '#hourly10day' do
    it 'returns a hash with response and hourly_forecast keys' do
      wunderground_wrapper = WundergroundWrapper.new(create(:location))
      expect(wunderground_wrapper.hourly10day).to eq fake_10_day_data
    end
  end
end
