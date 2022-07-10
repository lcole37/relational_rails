class AirportsController < ApplicationController
  def index
    @airport = Airport.all
  end

  def show
    @airport = Airport.find(params[:id])
  end
end
