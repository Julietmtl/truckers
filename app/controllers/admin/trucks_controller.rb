class Admin::TrucksController < ApplicationController

  def index
    @trucks = Truck.all
    @truck = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save
      redirect_to [:admin, :trucks], notice: 'Truck created!'
    else
      render :new
    end
  end

  def edit 
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
      if @truck.update(truck_params)
        redirect_to @truck
      else
        render 'edit'
      end
    end

  def destroy
    @truck = Truck.find params[:id]
    @truck.destroy
    redirect_to @truck
  end

  private

  def trucks_params
    params.require(:truck).permit(
      :name,
      :year,
      :truck_type,
      :capacity,
      :reserved
    )
  end
end
