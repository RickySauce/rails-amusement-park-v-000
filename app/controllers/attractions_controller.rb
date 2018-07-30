class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def ride
    attraction = Attraction.find(params[:attraction_id])
    ride = Ride.new(user_id: current_user.id, attraction_id: params[:attraction_id])
    if !ride.take_ride.is_a? String
      current_user.rides << ride
      attraction.rides << ride
      ride.save
      flash[:alert] = "Thanks for riding the #{attraction.name}!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = ride.take_ride
      redirect_to user_path(current_user)
    end
  end

  private

  def attraction_params
    params.require(:user).permit(:name, :password, :height, :nausea, :tickets, :happiness, :admin)
  end

end
