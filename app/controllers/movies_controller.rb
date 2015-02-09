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

end