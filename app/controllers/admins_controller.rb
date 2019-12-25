class AdminsController < ApplicationController
  def top
  	#権限なければログイン画面へ（ひとまず）(aki)
  	unless current_admin
  		redirect_to new_admin_session_path
  	end
	@orders = Order.where(created_at: Time.zone.now.all_day)
  end
end
