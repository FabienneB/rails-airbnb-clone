class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index

  end

  def show
    @booking = Booking.new
  end


  def product_params
  params.require(:cowork).permit(:city, :capacity, :user_id, photos: [])
  end
end

