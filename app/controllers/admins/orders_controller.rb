class Admins::OrdersController < ApplicationController
  def index
  	@orders = Order.all
  	@order_items = OrderItem.all
  end

  def today
  end

  def update
  	@order = Order.find(params[:id])
  	if @order.update(order_params)
  		# order_statusの変更に連動するproduction_statusの変更(aki)
  		order_items = OrderItem.where(order_id: params[:id])
  		binding.pry

  		if @order.order_status.to_s == "入金確認" and order_items.find_by(production_status: :着手不可)
  			order_items.update(production_status: :製作待ち)
  		end
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

  def order_params
  	params.require(:order).permit(:order_status)
  end
end
