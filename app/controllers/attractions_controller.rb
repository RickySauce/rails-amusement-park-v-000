class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def ride
    ride = Ride.new(user_id: current_user.id, attraction_id: params[:attraction_id])
    if

    redirect_to user_path(current_user)
  end

end
