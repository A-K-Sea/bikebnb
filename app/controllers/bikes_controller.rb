class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bikes = policy_scope(Bike).order(created_at: :desc)
  end

  def show
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    authorize @bike
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:user_id, :category, :brand, :brake_type, :price_per_day, :status, :number_of_gears)
  end
end
