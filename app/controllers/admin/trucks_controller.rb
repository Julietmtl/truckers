class Admin::TrucksController < ApplicationController

  def index
    @trucks = Truck.order(id: :desc).all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
  end

  def destroy
    @truck = Truck.find params[:id]
    @truck.destroy
  end
end
