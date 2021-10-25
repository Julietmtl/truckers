class TrucksController < ApplicationController
  def index
    @trucks = Truck.all.order(created_at: :desc)
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(params.require(:truck).permit(:name, :truck_type, :year, :capacity))
      flash[:success] = "Truck item successfully updated!"
      redirect_to admin_trucks_url
    else
      flash.now[:error] = "Truck item update failed"
      render :edit
    end
  end
  
end
