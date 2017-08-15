class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @coworks = Cowork.all
  end

  def show
    @cowork = cowork.find(cowork_params)
    @booking = Booking.new
  end


  def cowork_params
    params.require(:cowork).permit(:city, :capacity, :user_id, photos: [])
  end
end

