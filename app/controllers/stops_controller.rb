class StopsController < ApplicationController

  def show
    id = params[:id]
    @stop = Stop.find(id)
    @activities = @stop.activities
  end

end
