require 'rails_helper'

describe WundergroundFake do
  after(:each) do
    WundergroundFake.clear
  end

  describe '.hourly10day_for(location)' do
    it 'returns fake forecast data' do
      expect(WundergroundFake.hourly10day_for("foo")).to eq fake_10_day_data
    end
  end

  describe '.reset' do
    it 'resets response data to short response data' do
      WundergroundFake.ten_day_response_data = {}
      expect(WundergroundFake.hourly10day_for("foo")).to eq({})
      WundergroundFake.clear
      expect(WundergroundFake.hourly10day_for("foo")).to eq fake_10_day_data
    end
  end
end
