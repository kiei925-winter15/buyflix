require 'csv'

# ID,imdbID,Title,Year,Rating,Runtime,Genre,Released,Director,Writer,Cast,Metacritic,imdbRating,imdbVotes,Poster,Plot,FullPlot,Language,Country,Awards
input_file = File.expand_path('../movies.csv', __FILE__)
CSV.foreach(input_file) do |row|
  movie = Movie.new

  # do something awesome here
  # "row" is an array representing a row of data in the CSV file
  # e.g. row[2] is the title/name of the movie

  movie.name = row[2]
  movie.image = row[14]
  movie.summary = row[15]
  movie.year_released = row[3]
  movie.rating = row[4]
  movie.genre = row[6]
  movie.runtime = row[5]

  # row[10] => "Jonah Hill, Channing Tatum, Peter Stormare, Wyatt Russell"
  actor_names = row[10].split(", ")
  # actor_names => ["Jonah Hill", "Channing Tatum", "Peter Stormare", "Wyatt Russell"]

  actor_names.each do |name|
    actor = Actor.find_or_create_by(name: name)
    movie.actors << actor
  end

  movie.save

end