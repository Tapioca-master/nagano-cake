class Admins::ItemsController < ApplicationController
  before_action :authenticate_admin!

  # kaminari表示数設定
  PER = 10

  def index
    # 検索パラメータの有無で条件分岐
    if params[:search] != nil
      items = Item.search(params[:search])
      flash.now[:notice] = "検索の結果 #{items.count} 件みつかりました"
    else
      items = Item.all
      flash.now[:notice] = "全 #{items.count} 件あります"
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
      flash[:success] = "商品 #{@item.name} を新規登録しました"
      redirect_to admins_item_path(@item)
    else
      flash[:danger] = "商品を新規登録できませんでした"
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
      flash[:success] = "商品 #{@item.name} を更新しました"
      redirect_to admins_item_path(@item)
    else
      flash[:danger] = "商品を更新できませんでした"
      render action: :edit
    end
  end

  private
      def item_params
          params.require(:item).permit(:name, :introduction, :genre_id, :non_tax_price, :image, :sales_status)
      end
end
