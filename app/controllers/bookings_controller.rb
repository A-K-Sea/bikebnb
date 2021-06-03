class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @my_bikes = current_user.bikes
    @owner = current_user.bikes.any?
    # @bookings_as_renter = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @bike = Bike.find(params[:bike_id])
    authorize @bike
    @booking.bike = @bike
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to bike_path(@bike)
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
