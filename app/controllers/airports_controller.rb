class AirportsController < ApplicationController
  def index
    @airport = Airport.all
  end
end
