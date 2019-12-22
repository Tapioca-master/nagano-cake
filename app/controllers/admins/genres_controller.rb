class Admins::GenresController < ApplicationController
  def index
  	permission
  	@genres = Genre.all
  	@genre = Genre.new
  end

  def create
  	permission
  	@genres = Genre.all
  	genre = Genre.new(genre_params)
  	if genre.save
  		redirect_to action: :index
  	else
  		render action: :index
  	end
  end

  def edit
  	permission
  	@genre = Genre.find(params[:id])
  end

  def update
  	permission
  	@genre = Genre.find(params[:id])
  	if @genre.update(genre_params)
  		redirect_to admins_genres_path
  	else
  		render action: :index
  	end
  end


  #admin権限の判定(aki)
  def permission
  	unless current_admin
  		redirect_to new_admin_session_path
  	end
  end

  private

  def genre_params
    params.require(:genre).permit(:is_active, :name)
  end
end
