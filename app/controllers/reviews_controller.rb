class ReviewsController < ApplicationController
  before_action :find_movie

  def new
    @review = Review.new
  end

  def create
    review_params = params.require(:review).permit(:body, :rating)
    @review = @movie.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @movie, notice: "Thanks for the review!"
    else
      render "new"
    end
  end

  def find_movie
    @movie = Movie.find_by(id: params["movie_id"])
  end

end
