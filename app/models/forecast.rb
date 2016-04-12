class Forecast
  def initialize(data)
    @data = data['hourly_forecast']
  end

  def day(days_from_now)
    @date = Date.today.day + days_from_now
    ForecastDay.new(day_data)
  end

  private

  def day_data
    @day_data ||= @data.select { |day| day['FCTTIME']['mday'] == @date }
  end
end
