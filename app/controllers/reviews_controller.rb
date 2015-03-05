class ReviewsController < ApplicationController

  def new
    @movie = Movie.find_by(id: params["movie_id"])
    @review = Review.new
  end

  def create
    @movie = Movie.find_by(id: params["movie_id"])
    review_params = params.require(:review).permit(:body, :rating)
    @review = @movie.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @movie, notice: "Thanks for the review!"
    else
      render "new"
    end
  end

end
