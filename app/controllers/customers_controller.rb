class CustomersController < ApplicationController
  def show
  	@customer = Customer.find(params[:id])
  end

  def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])
  	if @customer.update(customer_params)
       redirect_to customer_path(@customer)
    else
       render :edit
    end
  end

  def exit
  end

  private
  def customer_params
    params.require(:customer).permit(:name_last, :name_first, :name_last_kana, :name_first_kana, :postal_code, :address, :phone_number, :email)
  end
end
