class Admin::DashboardsController < AdminController
  def show
    @location = Location.new
  end
end
