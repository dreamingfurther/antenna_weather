class WundergroundWrapper
  @@wunderground_api = WundergroundApi

  def initialize(location)
    @location = location
  end

  def hourly10day
    wunderground_api.hourly10day_for(location.info)
  end

  def astronomy
    wunderground_api.astronomy(location.info)
  end

  private

  attr_reader :location
  cattr_accessor :wunderground_api
end
