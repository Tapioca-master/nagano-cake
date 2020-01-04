class ApplicationController < ActionController::Base
	# <ここから>Customer新規登録時のパラメタ取得
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name_first, :name_last, :name_first_kana, :name_last_kana, :postal_code, :address, :phone_number])
    end
    # <ここまで>

end
