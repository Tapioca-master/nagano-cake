class CartItemsController < ApplicationController
  def index
    @cart_item = current_customer.cart_items.all

  end

  def create
    @cart_item = CartItem.new
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = params[:id]
    @cart_item.save(cart_item_params)
    redirect_to cart_items_path
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

 def cart_item_params
  params.require(:cart_item).permit(:amount)
 end
end