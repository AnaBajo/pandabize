class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @order = Order.new
  end

  def new
    @bike = Bike.new
    # @bike.customizations.build
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
    params.require(:bike).permit(
      :name,
      customization_attributes: [
        :name,
        :value
      ]
    )
  end
end
