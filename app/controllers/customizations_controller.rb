class CustomizationsController < ApplicationController

  def add_selections
    @bike = Bike.find(params[:bike_id])
    @customization = Customization.find(params[:id])
    @selections = @bike.customizations.where("element != ?", @customization.element)
  end

  def save_selection
    @bike = Bike.find(params[:bike_id])
    @customization_one = Customization.find(params[:id])
    @customization_two = Customization.find(params[:second_customization_id])
    @selection = Selection.new(first_customization_id: @customization_one.id, second_customization_id: @customization_two.id)
    @selection.save
    redirect_to add_selections_bike_customization_path(@bike, @customization_one)
  end

  def delete_selection
    @bike = Bike.find(params[:bike_id])
    @customization_one = Customization.find(params[:id])
    @customization_two = Customization.find(params[:second_customization_id])
    if @selection = Selection.find_by(first_customization_id: @customization_one.id, second_customization_id: @customization_two.id)
      @selection.delete
    elsif @selection = Selection.find_by(first_customization_id: @customization_two.id, second_customization_id: @customization_one.id)
      @selection.delete
    end
    redirect_to add_selections_bike_customization_path(@bike, @customization_one)
  end

  private

  def customization_params
    params.require(:customization).permit(
      :element,
      :value,
      selections_attributes: [
        :first_customization_id,
        :second_customization_id
      ]
    )
  end
end
