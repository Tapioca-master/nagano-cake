class Admins::OrdersController < ApplicationController
	before_action :authenticate_admin!

	# kaminari表示数設定
 	 PER = 10

	def index
		# TOPページからのリンク(aki)
		if params[:key] == "today"
			orders = Order.where(created_at: Time.zone.now.all_day)
			flash.now[:notice] = "本日の注文（#{orders.count}件）を表示しています"
		# 一意のCustomerからのリンク(aki)
		elsif params[:key] =~ /^[0-9]+$/
			orders = Order.where(customer_id: params[:key])
			customer = Customer.find(params[:key])
			flash.now[:notice] = "#{customer.name_last}#{customer.name_first} 様からの注文（#{orders.count}件）を表示しています"
		# その他（ヘッダ等）からのリンク(aki)
		else
			orders = Order.all
			flash.now[:notice] = "全注文（#{orders.count}件）を表示しています"
		end
		@order_items = OrderItem.all
		# kaminari用
    	@orders = orders.page(params[:page]).per(PER)
	end

	def today
	end

	def update
		@order = Order.find(params[:id])

		if @order.update(order_params)
			flash[:success] = "注文ステータスを #{@order.order_status} へ更新しました"

  			# order_statusの変更に連動するproduction_statusの変更(aki)
  			order_items = OrderItem.where(order_id: params[:id])
  			if @order.order_status.to_s == "入金確認" and order_items.find_by(production_status: :着手不可)
  				if order_items.update(production_status: :製作待ち)
  					flash[:success] = "注文ステータスを #{@order.order_status} へ更新し、関連する注文商品の製作ステータスを更新しました"
  				else
  					# production_statusを更新できなかった場合の処理
  					# -> 未実装
  				end
  			end
  			redirect_to admins_order_path(@order)
  		else
  			flash[:success] = "注文ステータスを更新できませんでした"
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
