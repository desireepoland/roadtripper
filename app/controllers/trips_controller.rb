class TripsController < ApplicationController
  def home
    @not_home = false
  end

  def index
    @trips = Trip.all
  end

  def show
    id = params[:id]
    @trip = Trip.find(id)
    @stops = @trip.stops
  end

  def new
    @trip = Trip.new
    @header = "Create A New Trip"
  end

  def edit
    @trip = Trip.find(params[:id])
    @header = "Edit Trip"
    render "new"
  end

  def create
    Trip.create(trip_params)
    redirect_to trips_path
  end

  def update
    Trip.update(params[:id], trip_params)
    redirect_to trip_path(params[:id])
  end

  def destroy
    id = params[:id]
    Trip.find(id).destroy
    redirect_to trips_path
  end

  def select
    redirect_to trip_path(params[:trip][:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description)
  end
end
