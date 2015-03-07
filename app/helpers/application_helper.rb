module ApplicationHelper

  def price_for(movie)
    number_to_currency(movie.price.to_d / 100) if movie.price
  end

  def stars_for(review)
    stars = ""
    review.rating.times do
      stars = stars + '<i class="fa fa-star"></i>'
    end
    stars.html_safe
  end

end
