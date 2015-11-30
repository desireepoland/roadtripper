class StopsController < ApplicationController
  before_action :find_trip, only: [:new, :edit]

  def show
    id = params[:id]
    @stop = Stop.find(id)
    @activities = @stop.activities
  end

  def new
    @stop = Stop.new
    @header = "Add A New Destination"
    render "form"
  end

  def edit
    @stop = Stop.find(params[:id])
    @header = "Edit Destination"
    render "form"
  end

  def create
    trip = Trip.find(params[:trip_id])
    trip.stops.create(stop_params)
    redirect_to trip_path(params[:trip_id])
  end

  def update
    trip = Trip.find(params[:trip_id])
    stop = trip.stops.find(params[:id])
    stop.update(stop_params)
    redirect_to trip_path(params[:trip_id])
  end

  def destroy
    trip_id = params[:trip_id]
    Stop.find(params[:id]).destroy
    redirect_to trip_path(trip_id)
  end

  private

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def stop_params
    params.require(:stop).permit(:name, :description)
  end

end
