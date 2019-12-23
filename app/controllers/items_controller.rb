class ItemsController < ApplicationController
  def index
  	@genres = Genre.all
  	if params[:id]
  		@items = Item.where(genre_id: params[:id])
  	else
  		redirect_to items_genre_path(@genres.first)
  	end
  end

  def show
  	@genres = Genre.all
  	@item = Item.find(params[:id])
  	@cart_item = CartItem.new(item_id: @item.id)
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = @item.id
  end

  def about
  end
end
