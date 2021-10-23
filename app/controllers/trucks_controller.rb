class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def new
    @category = Truck.new
  end
  
end
