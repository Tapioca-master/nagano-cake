class OrdersController < ApplicationController
  before_action :authenticate_customer!

  def index
  	  @orders = Order.where(customer_id:  current_customer.id)
  	  @order_items = OrderItem.where(order_id: params[:id])
      flash.now[:notice] = "あなたの注文は全 #{@orders.count} 件あります"
  end

  def show
  	  @order = Order.find(params[:id])
  	  @order_item = OrderItem.where(order_id: params[:id])
  end

  def create
  end
end
