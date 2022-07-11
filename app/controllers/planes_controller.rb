class PlanesController < ApplicationController
  def index
    @plane = Plane.all
  end

  def show
    # @plane = Plane.all
    # binding.pry
    @plane = Plane.find(params[:id])
  end



end
