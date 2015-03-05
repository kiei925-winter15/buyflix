require 'csv'

# ID,imdbID,Title,Year,Rating,Runtime,Genre,Released,Director,Writer,Cast,Metacritic,imdbRating,imdbVotes,Poster,Plot,FullPlot,Language,Country,Awards
input_file = File.expand_path('../movies.csv', __FILE__)
CSV.foreach(input_file) do |row|
  movie = Movie.new

  # do something awesome here

  movie.save
end