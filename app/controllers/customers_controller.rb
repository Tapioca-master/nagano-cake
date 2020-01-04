class CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
  	@customer = Customer.find(params[:id])
  end

  def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])

    # exitより（退会画面）来た場合の退会処理
    source = Rails.application.routes.recognize_path(request.referrer)
    if source[:action] == "exit"
      @customer.update(is_active: false)
      flash[:success] = "退会処理が完了しました"
      redirect_to destroy_customer_session_path
    else
      if @customer.update(customer_params)
        flash[:success] = "顧客情報を更新しました"
        redirect_to customer_path(@customer)
      else
        flash[:danger] = "顧客情報を更新できませんでした"
        render :edit
      end
    end
  end

  def exit

    @customer = Customer.find(current_customer.id)
  end

  private
  def customer_params
    params.require(:customer).permit(:name_last, :name_first, :name_last_kana, :name_first_kana, :postal_code, :address, :phone_number, :email)
  end

end
