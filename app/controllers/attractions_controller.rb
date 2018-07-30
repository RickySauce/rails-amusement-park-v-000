class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def ride
    binding.pry
    Ride.new(user_id: current_user.id, attraction_id: params[:attraction_id])

    redirect_to user_path(current_user)
  end

end
