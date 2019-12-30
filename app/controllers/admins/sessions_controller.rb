# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController

  # customerとの2重signinを防止
   before_action :is_customer_check

   # customerでログインしている場合customerのTOPへリダイレクト
   def is_customer_check
    if current_customer
      redirect_to root_path
    end
   end

  def after_sign_in_path_for(resource)
      # if customer_signed_in? == true
      #  # Customerでログインしている場合はsign_outさせる
      # # destroy_admin_session_path
      # redirect_to destory_admin_path
      # else
      #   admins_top_path
      # end
      admins_top_path
  end

  def after_sign_out_path_for(resource)
    new_admin_session_path
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
