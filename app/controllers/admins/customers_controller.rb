class Admins::CustomersController < ApplicationController
  before_action :authenticate_admin!

  # kaminari表示数設定
  PER = 10

  def index
    # 検索パラメータの有無による分岐
    if params[:search] != nil
      customers = Customer.search(params[:search])
      if customers == nil
        # 検索にヒットしなかった場合は空のオブジェクトを渡す
        customers = Cutsomer.new
      end
    else
      # 検索パラメータがない場合（通常）は全ての顧客を渡す
      customers = Customer.all
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
      redirect_to admins_customer_path(@customer)
    else
      render action: :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :name_first, :name_last, :name_first_kana, :name_last_kana, :email, :postal_code, :address, :phone_number, :is_active)
  end
end
