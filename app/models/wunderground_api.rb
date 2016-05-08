class WundergroundApi
  API_KEY = ENV['WUNDERGROUND_API_KEY']

  def self.hourly10day_for(location_info)
    state = location_info.split("/").first
    town = location_info.split("/").last
    HTTParty.get("http://api.wunderground.com/api/#{API_KEY}/hourly10day/q/#{state}/#{town}.json")
  end

  def self.astronomy(location_info)
    state = location_info.split("/").first
    town = location_info.split("/").last
    HTTParty.get("http://api.wunderground.com/api/#{API_KEY}/astronomy/q/#{state}/#{town}.json")
  end
end
