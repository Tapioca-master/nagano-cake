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
      @address = Address.find(params[:name].to_i)
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
    @shipping = 800

    end

  def thanks
    @order_item.save

  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def update
    @amount = CartItem.find(params[:id])
    @amount.update(cart_item_params)
    redirect_to cart_items_path
  end

  def empty
    @cart_item = CartItem.all
    @cart_item.delete_all
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
