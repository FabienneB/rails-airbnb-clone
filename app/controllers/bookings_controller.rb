class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @cowork = Cowork.find(params[:cowork_id])
    @booking = Booking.new(booking_params)
    @booking.nbr_coworkers = booking_params["nbr_coworkers"].to_i
    @booking.user = current_user
    @booking.cowork = @cowork
    if @booking.save
      redirect_to bookings_path
    else
      render 'coworks/show'
      # redirect_to :back
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:cowork_id])
    @booking.update(booking_params_status)
    if @booking.save
      redirect_to dashboard_path
    else
      render "dashboard/index"
    end
  end

  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :nbr_coworkers)
  end

  def booking_params_status
    params.require(:booking).permit(:status)
  end
end
