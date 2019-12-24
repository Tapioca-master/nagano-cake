class ItemsController < ApplicationController
	# TOPページkaminari表示数設定(aki)
	PER = 8

  	def index

  	# 有効なジャンルを取得する(aki)
  	@genres = Genre.where(is_active: true)

  	# URLでgenre指定がない場合(items_path)、もしくは無効なジャンルを指定された場合はidが若い有効なジャンルをリダイレクトで指定する(aki)
  	genre = Genre.find_by(id: params[:id])
  	if  params[:id] == nil or genre == nil or genre.is_active == false
  		redirect_to items_genre_path(@genres.first)
  	end

  	@items = Item.where(genre_id: params[:id]).page(params[:page]).per(PER)

  end

  def show
  	# 有効なジャンルを取得する(aki)
  	@genres = Genre.where(is_active: true)

  	@item = Item.find(params[:id])
  	@cart_item = CartItem.new(item_id: @item.id)
  end

  def about
  end
end
