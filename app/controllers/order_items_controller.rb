class OrderItemsController < ApplicationController
	before_action :authenticate_admin!

	def update
		order_item = OrderItem.find(params[:id])

		if order_item.update(order_item_params)
			# production_statusの変更に連動するorder_statusの変更(aki)
			order_items = OrderItem.where(order_id: order_item.order_id)
			order = Order.find_by(id: order_item.order_id)

			if order_items.find_by(production_status: :製作中)
				order.update(order_status: :製作中)
			end
			if order_items.where(production_status: :製作完了).count == order_items.count
				order.update(order_status: :発送準備中)
			end
			flash[:success] = "#{order_item.item.name} を #{order_item.production_status} へ更新しました"
			redirect_to admins_order_path(order)
		else
			# render先に必要な情報を取得(aki)
			@order = Order.find(id: order_item.order_id)
			@order_items = OrderItem.where(order_id: @order.id)
			flash.now[:danger] = "#{order_item.item.name} を更新できませんでした"
			render admins_orders_path
		end
	end

	private

	def order_item_params
		params.require(:order_item).permit(:production_status)
	end
end
