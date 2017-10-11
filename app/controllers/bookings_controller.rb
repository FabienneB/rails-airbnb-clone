class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :mark_as_accepted, :mark_as_rejected]
  def index
    @bookings = current_user.bookings
  end

  def create
    @cowork = Cowork.find(params[:cowork_id])
    @booking = Booking.new(booking_params)
    @booking.nbr_coworkers = booking_params["nbr_coworkers"].to_i
    @booking.user = current_user
    @booking.cowork = @cowork
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render 'coworks/show'
      # redirect_to :back
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def mark_as_accepted
    @booking.status = "accepted"
  end

  def mark_as_rejected
    @booking.status = "rejected"
  end

  private
  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :nbr_coworkers)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
