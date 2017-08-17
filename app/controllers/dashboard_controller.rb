class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :new]
  before_action :set_cowork, only: [:edit, :destroy]
  def index
    @coworks = Cowork.where(user: current_user)
  end

end
