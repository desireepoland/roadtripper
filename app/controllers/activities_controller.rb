class ActivitiesController < ApplicationController

  def new
    @trip = Trip.find(params[:trip_id])
    @stop = Stop.find(params[:stop_id])
    @activity = Activity.new
    @header = "Add A New Activity"
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @stop = Stop.find(params[:stop_id])
    @activity = Activity.find(params[:id])
    @header = "Edit Activity"
    render "new"
  end

  def create
    stop = Stop.find(params[:stop_id])
    stop.activities.create(activity_params)
    redirect_to trip_stop_path(stop.trip_id, stop.id)
  end

  def update
    stop = Stop.find(params[:stop_id])
    activity = stop.activities.find(params[:id])
    activity.update(activity_params)
    redirect_to trip_stop_path(stop.trip_id, stop.id)
  end

  def destroy
    stop = Stop.find(params[:stop_id])
    Activity.find(params[:id]).destroy
    redirect_to trip_stop_path(stop.trip_id, stop.id)
  end

  private

  def activity_params
    params.require(:activity).permit(:name)
  end

end
