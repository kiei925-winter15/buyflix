require 'csv'

# ID,imdbID,Title,Year,Rating,Runtime,Genre,Released,Director,Writer,Cast,Metacritic,imdbRating,imdbVotes,Poster,Plot,FullPlot,Language,Country,Awards
input_file = File.expand_path('../movies.csv', __FILE__)
CSV.foreach(input_file) do |row|
  movie = Movie.new

  # do something awesome here
  # "row" is an array representing a row of data in the CSV file
  # e.g. row[2] is the title/name of the movie
  
  movie.save
end