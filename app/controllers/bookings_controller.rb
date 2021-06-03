class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @my_bikes = current_user.bikes
    @owner = current_user.bikes.any?
    # @bookings_as_renter = current_user.bookings
  end

  def create
    @booking = Booking.new(start_date: Date.parse(booking_params[:start_date]), end_date: Date.parse(booking_params[:end_date]))
    authorize @booking
    @bike = Bike.find(params[:bike_id])
    @booking.user = current_user

    @booking.bike = @bike
    if @booking.save
      redirect_to bikes_path
    else
      redirect_to bike_path(@bike)
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
