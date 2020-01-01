class Admins::ItemsController < ApplicationController
  before_action :authenticate_admin!

  # kaminari表示数設定
  PER = 10

  def index
    # 検索パラメータの有無で条件分岐
    if params[:search] != nil
      items = Item.search(params[:search])
    else
      items = Item.all
    end
    # kaminari用
    @items = items.page(params[:page]).per(PER)
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
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admins_item_path(@item)
    else
      render action: :edit
    end
  end

  private
      def item_params
          params.require(:item).permit(:name, :introduction, :genre_id,
                                       :non_tax_price, :image, :sales_status)
      end

end
