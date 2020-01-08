class AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @address = Address.new
    @addresses = Address.where(customer_id: current_customer)
    flash.now[:notice] = "全 #{@addresses.count} 件あります"
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    @addresses = Address.all
    if @address.save
      flash[:success] = "新しい配送先を登録しました"
      redirect_to addresses_path
    else
      flash.now[:danger] = "新しい配送先を登録できませんでした"
      render action: :index
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      flash[:success] = "配送先を更新しました"
      redirect_to addresses_path
    else
      flash.now[:danger] = "配送先を更新できませんでした"
      render action: :edit
    end
  end

  def destroy
    address = Address.find(params[:id])
    if address.destroy
      flash[:success] = "配送先を削除しました"
      redirect_to addresses_path
    end
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
end
