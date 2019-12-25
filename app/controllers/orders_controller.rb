class OrdersController < ApplicationController
  def index
  	  @orders = Order.where(customer_id:  current_customer.id)
  	  @order_items = OrderItem.where(order_id: params[:id])
  end
  def show
  	  @order = Order.find(params[:id])
  	  @order_item = OrderItem.where(order_id: params[:id])
  end
end
