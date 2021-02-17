class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:name)
  end

end
