class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    if params[:query].present?
      @bikes = policy_scope(Bike).near(params[:query], 10)
    else
      @bikes = policy_scope(Bike).order(created_at: :desc)
    end

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: bike }),
        image_url: helpers.asset_url('bicycle.png')
      }
    end

  end

  def show
    @bike = Bike.find(params[:id])
    authorize @bike

    @markers =
    [{
      lat: @bike.latitude,
      lng: @bike.longitude,
      info_window: render_to_string(partial: "info_window", locals: { bike: @bike }),
      image_url: helpers.asset_url('bicycle.png')
    }]
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    authorize @bike
    @bike.user = current_user

    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:user_id, :category, :brand, :brake_type, :price_per_day, :status, :number_of_gears, :photo, :address, :description)
  end
end
