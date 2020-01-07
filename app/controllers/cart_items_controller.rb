class CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def index
    # @cart_items = CartItem.where(customer_id: current_customer.id)
    @cart_items = current_customer.cart_items
  end

  def update
    @cart_item = CartItem.find(params[:id])
    if @cart_item.update(cart_item_params)
      flash[:success] = "#{@cart_item.item.name} の数量を変更しました"
      redirect_to cart_items_path
    else
      flash.now[:danger] = "#{@cart_item.item.name} の数量を変更できませんでした"
      @cart_items = current_customer.cart_items
      render action: :index
    end
  end

  def create
    if cart_exist?(params[:cart_item][:item_id].to_i)
      cart_item  = current_customer.cart_items.find_by(item_id: params[:cart_item][:item_id].to_i)
      cart_item.amount += params[:cart_item][:amount].to_i
      cart_item.save
      flash[:success] = "カートに #{cart_item.item.name} を #{cart_item.amount} 個追加しました"
      redirect_to cart_items_path
    else
      @cart_item = CartItem.new(cart_item_params)
      if @cart_item.save
        flash[:success] = "カートに #{@cart_item.item.name} を #{@cart_item.amount} 個追加しました"
        redirect_to cart_items_path
      else
        flash.now[:danger] = "カートに #{@cart_item.item.name} を追加できませんでした"
        render item_path (@cart_item.item_id)
      end
    end
  end

  def info
  end

  def confirm
    # binding.pry
    if params[:ship_address] == "registered_address"
      ad = Address.where(customer_id: current_customer.id).find(params[:ship_nummber].to_i)
      @postal_code = ad.postal_code
      @address = ad.address
      @name = ad.name
    elsif params[:ship_address] == "new_address"
      ad = Address.new(
        customer_id: current_customer.id,
        address: params[:address],
        postal_code: params[:postal_code],
        name: params[:name]
        )
      unless ad.save
        flash.now[:danger] = "新しいお届け先を正しく入力してください"
        render action: :info
      end
      flash.now[:success] = "新しいお届け先を登録しました"
      @postal_code = ad.postal_code
      @address = ad.address
      @name = ad.name
    elsif params[:ship_address] == "customer_address"
      ad = current_customer
      @postal_code = ad.postal_code
      @address = ad.address
      @name = "#{ad.name_last} #{ad.name_first}"
    end
    @payment = params[:payment]
    @cart_items = current_customer.cart_items
    @tax = 1.1
  end

  def thanks
    cart_items = current_customer.cart_items
    order = Order.new
    order.customer_id = current_customer.id
    order.order_status = :入金待ち
    order.shipping = 800
    order.ship_name = params[:ship_name]
    order.ship_address = params[:address]
    order.postal_code = params[:postal_code]
    order.payment = params[:payment]
    order.save

    flash.now[:success] = "注文が確定しました"

    cart_items.each do |item|
      order_item = OrderItem.new
      order_item.order_id = order.id
      order_item.item_id = item.item.id
      order_item.amount = item.amount
      order_item.tax_price = (item.item.non_tax_price*1.1).round
      order_item.production_status = :着手不可
      order_item.save

      CartItem.find_by(item_id: item.item_id,customer_id: current_customer.id).destroy
    end

  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    flash[:success] = "カートから #{@cart_item.item.name} を削除しました"
    redirect_to cart_items_path
  end

  def empty
    @cart_item = CartItem.where(customer_id: current_customer)
    @cart_item.delete_all
    flash[:success] = "カートを空にしました"
    redirect_to items_path
  end

  private

  def cart_exist?(item_id)
    cart = CartItem.find_by(customer_id: current_customer.id, item_id: item_id)
    cart.present?
  end
  def cart_item_params
    params.require(:cart_item).permit(:amount, :item_id, :customer_id)
  end

end

