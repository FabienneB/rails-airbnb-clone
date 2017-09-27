class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :new]
  before_action :set_cowork, only: [:edit, :update, :destroy]

  def index
    if params[:city].present?
      @coworks = Cowork.near(params[:city], 10)
    else
      @coworks = Cowork.all
    end
  end

  def show
    @review = Review.new
    @reviews = Review.all
    @cowork = Cowork.find(params[:id])
    @hash = Gmaps4rails.build_markers([@cowork]) do |cowork, marker|
      marker.lat cowork.latitude
      marker.lng cowork.longitude
    end
    @booking = Booking.new
  end

  def new
    @cowork = Cowork.new(session[:cowork])
    session[:cowork] = nil if current_user && session[:cowork]
  end


  def create
    @cowork = Cowork.new(cowork_params)
    @cowork.user = current_user
    if @cowork.save
      redirect_to dashboard_path
    else
      session[:cowork] = params[:coworks]
      render :new
    end
  end

  def edit
  end

  def update
    @cowork.user = current_user
    @cowork.update(cowork_params)
    if @cowork.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @cowork.destroy
    redirect_to dashboard_path
  end

  private
  def cowork_params
    params.require(:cowork).permit(:city, :address, :title, :capacity, :description, :price, photos: [])
  end

  def set_cowork
    @cowork = Cowork.find(params[:id])
  end
end


