class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to flat_bookings_path, notice: "your booking is done"
    else
      redirect_to flat_bookings_path, notice: "please choose your dates"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :flat_id)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
