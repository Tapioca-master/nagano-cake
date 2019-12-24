class OrderItemsController < ApplicationController
	def update
		@order_item = OrderItem.find(params[:id])
		if @order_item.update(order_item_params)
			redirect_to admins_order_path(@order_item.order_id)
		else
			# render先に必要な情報を取得
			@order = Order.find(id: @order_item.order_id)
			@order_items = OrderItem.where(order_id: @order.id)
			render admins_orders_path
		end
	end

	private

	def order_item_params
		params.require(:order_item).permit(:production_status)
	end
end
