class CartItemsController < ApplicationController
  def index
    # @cart_items = CartItem.where(customer_id: current_customer.id)
    @cart_items = current_customer.cart_items
  end

  def create
    if cart_exist?(params[:cart_item][:item_id].to_i)
      cart_item  = current_customer.cart_items.find_by(item_id: params[:cart_item][:item_id].to_i)
      cart_item.amount += params[:cart_item][:amount].to_i
      cart_item.save
      redirect_to cart_items_path
    else
      @cart_item = CartItem.new(cart_item_params)
      if @cart_item.save
        redirect_to cart_items_path
      else
        render item_path (@cart_item.item_id)
      end
    end
  end

  def info
  end

  def confirm
    # binding.pry
    if params[:ship_address] == "registered_address"
      @my_addresses = Address.where(customer_id: current_customer.id)
      @address = @my_addresses.find(params[:ship_nummber].to_i)
    elsif params[:ship_address] == "new_address"
      @address = Address.new(
          address: params[:address],
          postal_code: params[:postal_code],
          name: params[:name]
        )
      @address.save
    else
      @address = params[:ship_address]
    end
    @payment = params[:payment]
    @cart_items = current_customer.cart_items
    @tax = 1.1
    end

  def thanks
    cart_items = current_customer.cart_items
    order = Order.new
    order.shipping = 800
    order.ship_name = params[:name]
    order.ship_address = params[:ship_address]
    order.postal_code = params[:postal_code]
    order.payment = params[:payment]
    order.save
  binding.pry
    cart_items.each do |item|
      order_item = OrderItem.new
      order_item.order_id = order.id
      order_item.id = item.item.id
      order_item.amount = item.amount
      order_item.tax_price = item.item.non_tax_price*1.1
      order_item.save

    CartItem.find(item.id).destroy
    end

  end

  def destroy
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