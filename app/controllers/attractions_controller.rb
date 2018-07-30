class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def ride
    attraction = Attraction.find(params[:id])
    ride = Ride.new(user_id: current_user.id, attraction_id: params[:attraction_id])
    if !ride.take_ride.is_a? String
      current_user.rides << ride
      attraction.rides << ride
      ride.save
      redirect_to user_path(current_user)
    else
      flash[:alert] = ride.take_ride
      redirect_to attraction_path(attraction)
    end
  end

end
