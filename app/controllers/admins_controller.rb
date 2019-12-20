class AdminsController < ApplicationController
  def top
  	unless current_admin
  		redirect_to new_admin_session_path
  	end
  end
end
