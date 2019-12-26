class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@genres = Genre.all
  	@genre = Genre.new
  end

  def create
  	@genres = Genre.all
  	genre = Genre.new(genre_params)
  	if genre.save
  		redirect_to action: :index
  	else
  		render action: :index
  	end
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def update
  	@genre = Genre.find(params[:id])
  	if @genre.update(genre_params)
  		redirect_to admins_genres_path
  	else
  		render action: :index
  	end
  end

  private

  def genre_params
    params.require(:genre).permit(:is_active, :name)
  end
end
