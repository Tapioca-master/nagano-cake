class AddressesController < ApplicationController
  def index
    permission
    @address = Address.new
    @addresses = Address.all
  end

  def create
    permission
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    @addresses = Address.all
    if @address.save
      redirect_to addresses_path
    else
      render action: :index
    end
  end

  def edit
    permission
    @address = Address.find(params[:id])
  end

  def update
    permission
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to addresses_path
    else
      render action: :edit
    end
  end

  def destroy
    permission
    address = Address.find(params[:id])
    if address.destroy
      redirect_to addresses_path
    end
  end

  def permission
    unless current_customer
      redirect_to new_customer_session_path
    end
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
end
