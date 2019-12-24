class OrdersController < ApplicationController
  def index
<<<<<<< Updated upstream
=======
  	  @orders = Order.all
  	  @order_items = OrderItem.where(customer_id: current_customer.id)
>>>>>>> Stashed changes
  end
  def show
  end
end
