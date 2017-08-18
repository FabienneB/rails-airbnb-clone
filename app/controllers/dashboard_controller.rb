class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :new]

  def index
    @coworks = Cowork.where(user_id: current_user.id)
  end
end
