class BookingsController < ApplicationController
  def new
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `spacecraft_id` to associate booking with corresponding restaurant
    @spacecraft = Restaurant.find(params[:spacecraft_id])
    @booking.spacecraft = @spacecraft
    if @booking.save
      redirect_to spacecraft_path(@spacecraft)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
