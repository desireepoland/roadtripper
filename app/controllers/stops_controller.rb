class StopsController < ApplicationController

  def show
    id = params[:id]
    @stop = Stop.find(id)
    @activities = @stop.activities
  end

  def new
    @stop = Stop.new
    @header = "Add A New Stop"
    @action = "create"
    @method = :post
  end

  def edit
  end

  def create
    trip = Trip.find(params[:trip_id])
    trip.stops.create(stop_params)
    redirect_to trip_path(params[:trip_id])
  end

  def update
  end

  def destroy
  end

  private

  def stop_params
    params.require(:stop).permit(:name, :description)
  end

end
