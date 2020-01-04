class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@genres = Genre.all
  	@genre = Genre.new
    flash.now[:notice] = "全#{@genres.count}件あります"
  end

  def create
  	@genres = Genre.all
  	genre = Genre.new(genre_params)
  	if genre.save
      flash[:success] = "ジャンルに #{genre.name} を追加しました"
  		redirect_to action: :index
  	else
      flash[:danger] = "ジャンルに #{genre.name} を追加できませんでした"
  		render action: :index
  	end
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def update
  	@genre = Genre.find(params[:id])
  	if @genre.update(genre_params)
      flash[:success] = "ジャンル #{@genre.name} を更新しました"
  		redirect_to admins_genres_path
  	else
      flash[:danger] = "ジャンル #{@genre.name} を更新できませんでした"
  		render action: :index
  	end
  end

  private

  def genre_params
    params.require(:genre).permit(:is_active, :name)
  end
end
