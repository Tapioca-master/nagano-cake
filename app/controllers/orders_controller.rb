class OrdersController < ApplicationController
  def index
  	  @orders = Order.where(customer_id:  current_customer.id)
  	  @order_items = OrderItem.where(customer_id: current_customer.id)
  end
  def show
  end
end
