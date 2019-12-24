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
  end

  def thanks
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