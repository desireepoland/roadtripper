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

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
end
