class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.where(customer_id: current_customer.id)
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
      if  @cart_item.save
          redirect_to cart_items_path
      else
          render item_path (@cart_item.item_id)
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

 def cart_item_params
  params.require(:cart_item).permit(:amount, :item_id, :customer_id)

 end
end