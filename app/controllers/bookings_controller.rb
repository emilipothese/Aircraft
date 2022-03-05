class BookingsController < ApplicationController
  def new
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
    @booking = Booking.new
    @bookings = Booking.where(user_id: current_user)
  end

  def user
    @user = @booking.user
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `spacecraft_id` to associate booking with corresponding restaurant
    @spacecraft = Spacecraft.find(params[:spacecraft_id])
    @booking.spacecraft = @spacecraft
    @booking.user = current_user
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
