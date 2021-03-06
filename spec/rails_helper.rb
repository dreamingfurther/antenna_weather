ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'support/factory_girl'

ActiveRecord::Migration.maintain_test_schema!

WundergroundWrapper.wunderground_api = WundergroundFake

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end

def fake_10_day_data
  @fake_10_day_data ||= JSON.parse(File.read(Rails.root.join("spec/fixtures/10_day_forecast_data.json")))
end
