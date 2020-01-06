class ApplicationController < ActionController::Base
	# <ここから>Customer新規登録時のパラメタ取得
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :cart_count

	def cart_count
		if current_customer
			cart_items = CartItem.where(customer_id: current_customer.id)
			@cart_count_nav = 0
			cart_items.each do |cart_item|
				@cart_count_nav += cart_item.amount
			end
			@cart_count_nav
		end
	end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name_first, :name_last, :name_first_kana, :name_last_kana, :postal_code, :address, :phone_number])
    end
    # <ここまで>

end
