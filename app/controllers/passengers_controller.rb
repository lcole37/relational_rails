class PassengersController < ApplicationController
  def index
    @passenger = Passenger.all
  end

  def show
    @passenger = Passenger.find(params[:id])
  end
end
