class Admins::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    #binding.pry
    if @item.save
    redirect_to admins_item_path(@item)
    else
    render action: :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
      def item_params
          params.require(:item).permit(:name, :introduction, :genre_id,
                                       :non_tax_price, :image, :sales_status)
      end

end
