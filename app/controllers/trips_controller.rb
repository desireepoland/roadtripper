class TripsController < ApplicationController
  def home
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
    @action = "create"
    @method = :post
  end

  def edit
    @trip = Trip.find(params[:id])
    @header = "Edit Trip"
    @action = "update"
    @method = :patch
    render "new"
  end

  def create
    trip = Trip.create(trip_params)
    redirect_to trips_path
  end

  def update

  end

  def destroy

  end

  def trip_params
    params.require(:trip).permit(:name, :description)
  end
end
