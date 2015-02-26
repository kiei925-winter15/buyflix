class MoviesController < ApplicationController
  skip_before_action :require_user, only: [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params["id"])
    @roles = @movie.roles
  end

  def new
    @movie = Movie.new
  end

  def create
    omdb = Omdb::Api.new.fetch(params[:movie][:name])
    movie_data = omdb[:movie]
    # Create movie from API instead of user input
    # Nevermind about price and studio
  end

  def edit
    @movie = Movie.find_by(id: params["id"])
  end

  def update
    movie_params = params.require(:movie).permit!
    @movie = Movie.find_by(id: params["id"])
    @movie.update(movie_params)
    if @movie.valid?
      redirect_to movies_path
    else
      render text: "FAIL"
    end
  end

  def destroy
    @movie = Movie.find_by(id: params["id"])
    @movie.destroy
    redirect_to movies_path
  end

end