class Admins::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
      def item_params
          params.require(:item).permit(:name, :introduction, :genre_id,
                                       :no_tax_price, :image_id, :sales_status)
      end

end
