class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params["id"])
    @roles = Role.where(movie_id: @movie.id)  
  end

  def new
    @movie = Movie.new
  end

  def create
    movie_params = params.require(:movie).permit!
    Movie.create(movie_params)
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find_by(id: params["id"])
  end

  def update
    movie_params = params.require(:movie).permit!
    @movie = Movie.find_by(id: params["id"])
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find_by(id: params["id"])
    @movie.destroy
    redirect_to movies_path
  end

end