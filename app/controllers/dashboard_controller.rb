class DashboardController < ApplicationController
  def index
    @coworks = Cowork.where(user_id: current_user.id)
  end
end
