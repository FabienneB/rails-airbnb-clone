class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @cowork = Cowork.find(params[:cowork_id])
    @booking.cowork = @cowork
    if @booking.save
      redirect_to bookings_path
    else
      render 'coworks/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end
end
