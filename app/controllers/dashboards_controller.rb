class DashboardsController < ApplicationController
  def index
    @locations = Location.all
  end
end
