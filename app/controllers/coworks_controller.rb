class CoworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index

  end

  def show
    @booking = Booking.new
  end
end
