class Admin::TrucksController < ApplicationController

  def index
    @trucks = Truck.all
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

  private

  def trucks_params
    params.require(:product).permit(
      :name,
      :year,
      :truck_type,
      :capacity,
      :reserved
    )
  end
end
