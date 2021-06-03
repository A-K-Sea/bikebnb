class BookingsController < ApplicationController
<<<<<<< HEAD
  belongs_to :user
  belongs_to :bike

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.save
    redirect_to bookings_index_path
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
=======

  def index
    @bookings = policy_scope(Booking)
>>>>>>> c5eaa6ba08d1adbacd12df3cf3601e89a329ba4c
  end

end
