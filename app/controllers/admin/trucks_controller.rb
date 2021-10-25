class Admin::TrucksController < ApplicationController

  def index
    @trucks = Truck.all
    @truck = Truck.all
  end

  def new
    @truck = Truck.new(reserved: false)
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
        redirect_to [:admin, :trucks]
      else
        render :edit
      end
    end

  def destroy
    @truck = Truck.find params[:id]
    @truck.destroy
    redirect_to [:admin, :trucks], notice: 'Truck deleted!'
  end

  private

  def truck_params
    params.require(:truck).permit(
      :name,
      :company_id,
      :year,
      :truck_type,
      :capacity,
      :reserved
    )
  end
end
