class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :new]
  before_action :set_cowork, only: [:edit, :destroy]
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
      redirect_to dashboard_path(@cowork)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cowork.update(cowork_params)
    redirect_to dashboard_path
  end

  def destroy
    @destroy.destroy
    redirect_to dashboard_path
  end

  private
  def cowork_params
    params.require(:cowork).permit(:city, :address, :capacity, :description, :price, photos: [])
  end

  def set_cowork
    @cowork = Cowork.find(params[:id])
  end
end


