class Admins::CustomersController < ApplicationController
  # kaminari表示数設定(aki)
  PER = 10

  def index
    permission
    @customers = Customer.all.page(params[:page]).per(PER)
  end

  def show
    permission
    @customer = Customer.find(params[:id])
  end

  def personal
  end

  def edit
    permission
    @customer = Customer.find(params[:id])
  end

  def update
    permission
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admins_customer_path(@customer)
    else
      render action: :edit
    end
  end

  #admin権限の判定(aki)
  def permission
    unless current_admin
      redirect_to new_admin_session_path
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :name_first, :name_last, :name_first_kana, :name_last_kana, :email, :postal_code, :address, :phone_number, :is_active)
  end
end
