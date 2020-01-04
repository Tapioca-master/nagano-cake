# frozen_string_literal: true

class Customers::SessionsController < Devise::SessionsController
  # adminとの2重signinを防止
   before_action :is_admin_check

   # adminでログインしている場合adminのTOPへリダイレクト
   def is_admin_check
    if current_admin
      flash[:danger] = "管理者ユーザからサインアウトしてください"
      redirect_to admins_top_path
    end
   end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    items_path
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

end
