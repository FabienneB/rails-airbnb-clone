class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :new]
  def index
    @coworks = Cowork.all
  end

  def show
    @cowork = Cowork.find(params[:id])
    @hash = Gmaps4rails.build_markers([@cowork]) do |cowork, marker|
      marker.lat cowork.latitude
      marker.lng cowork.longitude
    end
    @booking = Booking.new
  end
end
