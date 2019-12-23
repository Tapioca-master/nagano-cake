class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    
  end

  def create
  	@item = Item.find_by(params[:id])
  	@customer = Customer.
    redirect_to cart_item_path(current_user.id)
  end

  def about
  end
end
