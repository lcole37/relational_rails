class PlanesController < ApplicationController
  def index
    @plane = Plane.all
  end

  def show
    @plane = Plane.all
    # @plane = Plane.find(params[:id])
  end

end
