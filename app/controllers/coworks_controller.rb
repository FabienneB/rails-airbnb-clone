class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
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

  def new
    @cowork = Cowork.new
  end

  def create
    @cowork = Cowork.new(cowork_params)
    @cowork.user = current_user
    @cowork.save
    if @cowork.save
      redirect_to dasboard_path(@cowork)
    else
      render :new
    end
  end

  private
  def cowork_params
      params.require(:cowork).permit(:city, :address, :capacity, :price, photos: [])
    end
end
