class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @order.save
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:bike_id, :user_id)
  end

end
