class TrucksController < ApplicationController
  def index
    @trucks = Truck.all.order(created_at: :desc)
  end

  def show
    @truck = Truck.find(params[:id])
  end
  
end
