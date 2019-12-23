class ItemsController < ApplicationController
  def index
# <<<<<<< HEAD
#   	@items = Item.all
#   end

#   def show
#     @item = Item.find(params[:id])

#   end

#   def create
#   	@item = Item.find_by(params[:id])
#   	@customer = Customer.
#     redirect_to cart_item_path(current_user.id)
# =======
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
# >>>>>>> master
  end

  def about
  end
end
