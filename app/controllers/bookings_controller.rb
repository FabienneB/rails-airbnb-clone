class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create

  end

  def destroy

  end

end
