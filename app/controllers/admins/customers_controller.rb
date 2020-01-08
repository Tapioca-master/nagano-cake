class Admins::CustomersController < ApplicationController
  before_action :authenticate_admin!

  # kaminari表示数設定
  PER = 10

  def index
    # 検索パラメータの有無による分岐
    if params[:search] != nil
      customers = Customer.search(params[:search])
      flash.now[:notice] = "検索の結果 #{customers.count} 件みつかりました"
    else
      # 検索パラメータがない場合（通常）は全ての顧客を渡す
      customers = Customer.all
      flash.now[:notice] = "全 #{customers.count} 件あります"
    end

    # kaminari用
    @customers = customers.page(params[:page]).per(PER)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def personal
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "顧客情報を更新しました"
      redirect_to admins_customer_path(@customer)
    else
      flash.now[:danger] = "顧客情報の更新に失敗しました"
      render action: :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :name_first, :name_last, :name_first_kana, :name_last_kana, :email, :postal_code, :address, :phone_number, :is_active)
  end
end
