require 'csv'

CSV.foreach("/Users/eng/Desktop/movies.csv") do |row|
  movie = Movie.new
  movie.name = row[0]
  movie.name = row[1]
  movie.image = row[2]
  movie.summary = row[3]
  movie.year_released = row[4]
  movie.rating = row[5]
  movie.genre = row[6]
  movie.runtime = row[7]
  movie.format = row[8]
  movie.price = row[9]
  # movie.studio_id = row[10]
  movie.save
end