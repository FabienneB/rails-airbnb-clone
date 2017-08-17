class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    if params[:city].present?
      @coworks = Cowork.near(params[:city], 10)
    else
      @coworks = Cowork.all
    end
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
