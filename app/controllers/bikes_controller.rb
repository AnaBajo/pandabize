class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
    9.times do
      @customization = @bike.customizations.build
    end
  end

  def create
    @bike = Bike.new(bike_params)

    if @bike.save
      redirect_to admin_show_bike_path(@bike)
    else
      render :new
    end
  end

  def admin_show
    @bike = Bike.find(params[:id])
  end

  def show
    @bike = Bike.find(params[:id])
    @order = Order.new
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
  end

  private

  def bike_params
    params.require(:bike).permit(
      :name,
      customizations_attributes: [
        :element,
        :value,
        selections_attributes: [
          :first_customization_id,
          :second_customization_id
        ]
      ]
    )
  end
end
