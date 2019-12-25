class Admins::OrdersController < ApplicationController
	def index
		# TOPページからのリンク(aki)
		if params[:key] == "today"
			@orders = Order.where(created_at: Time.zone.now.all_day)
			@order_items = OrderItem.where(created_at: Time.zone.now.all_day)
		# 一意のCustomerからのリンク(aki)
		elsif params[:key] =~ /^[0-9]+$/
			@orders = Order.where(customer_id: params[:key])
			@order_items = OrderItem.all
		# その他（ヘッダ等）からのリンク(aki)
		else
			@orders = Order.all
			@order_items = OrderItem.all
		end
	end

	def today
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(order_params)
  		# order_statusの変更に連動するproduction_statusの変更(aki)
  		order_items = OrderItem.where(order_id: params[:id])

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
