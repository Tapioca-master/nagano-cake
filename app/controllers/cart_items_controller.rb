class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @cart_item
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

 def cart_item_params
  params.require(:cart_item).permit(:amount)
 end
 private

end