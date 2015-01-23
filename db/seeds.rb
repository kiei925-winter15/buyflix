# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Movie.delete_all
Actor.delete_all
Role.delete_all

# Create the movies
puts "Creating movies..."
raiders = Movie.create(name: "Raiders of the Lost Ark", summary: "Snakes. I hate snakes.", year_released: "1981")
star_wars = Movie.create(name: "Star Wars", summary: "Use the force.", year_released: "1977")
apollo_13 = Movie.create(name: "Apollo 13", summary: "Spoiler alert, we land on the moon.", year_released: "1995")
cast_away = Movie.create(name: "Cast Away", summary: "A man and an island.", year_released: "2000")

# Create the actors
puts "Creating actors..."
ford = Actor.create(name: "Harrison Ford")
fisher = Actor.create(name: "Carrie Fisher")
hanks = Actor.create(name: "Tom Hanks")
hunt = Actor.create(name: "Helen Hunt")

puts "Creating roles..."

# Create the roles for Raiders of the Lost Ark
Role.create(movie_id: raiders.id, actor_id: ford.id)

# Create the roles for Star Wars
Role.create(movie_id: star_wars.id, actor_id: ford.id)
Role.create(movie_id: star_wars.id, actor_id: fisher.id)

# Create the roles for Apollo 13
Role.create(movie_id: apollo_13.id, actor_id: hanks.id)

# Create the roles for Cast Away
Role.create(movie_id: cast_away.id, actor_id: hanks.id)
Role.create(movie_id: cast_away.id, actor_id: hunt.id)

puts "There are now #{Movie.count} movies, #{Actor.count} actors, and #{Role.count} roles in the database."
