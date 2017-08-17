class DashboardController < ApplicationController
  def index
    @coworks = Cowork.where(user: current_user)
  end
end
