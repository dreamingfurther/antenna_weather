class Location < ActiveRecord::Base
  def info
    "#{state}/#{town_name}"
  end
end
