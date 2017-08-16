class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @coworks = Cowork.all
  end

  def show
    @cowork = Cowork.find(params[:id])
    @cowork_coordinates = { lat: @cowork.latitude, lng: @cowork.longitude }
    @booking = Booking.new
  end
end

