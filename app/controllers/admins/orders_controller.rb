class Admins::OrdersController < ApplicationController
  def index
  	@orders = Order.all
  	@order_items = OrderItem.all
  end

  def today
  end

  def update
  	@order = Order.find(params[:id])
  	if @order.update(order_item_params)
  		redirect_to admins_order_path(@order)
  	else
  		render action: :show
  	end
  end

  def show
  	@order = Order.find(params[:id])
  	@order_items = OrderItem.where(order_id: @order.id)
  end

  private 

  def order_item_params
  	params.require(:order).permit(:order_status)
  end

end
