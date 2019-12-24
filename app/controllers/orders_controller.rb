class OrdersController < ApplicationController
  def index
  	  @orders = Order.all
  	  Customer.where(customer_id: current_customer.id)
  end

  def show
  end
end
