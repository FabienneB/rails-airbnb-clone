class DashboardController < ApplicationController
  def index
    @coworks = current_user.coworks
  end

end
