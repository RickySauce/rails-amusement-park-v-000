class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def ride
    ride = Ride.new(user_id: current_user.id, attraction_id: params[:attraction_id])
    binding.pry
    if !ride.take_ride.is_a? String
      current_user.rides << ride
      ride.attraction.rides << ride
      ride.save
      redirect_to user_path(current_user)
    else
    end
  end

end
