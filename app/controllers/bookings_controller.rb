class BookingsController < ApplicationController
  def index
    @bookings = current_user.booking
  end

  def create

  end

  def destroy

  end

end
