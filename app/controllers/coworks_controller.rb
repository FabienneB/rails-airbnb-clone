class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @coworks = Cowork.all
  end

  def show
    @cowork = Cowork.find(params[:id])
    @booking = Booking.new
  end
end

