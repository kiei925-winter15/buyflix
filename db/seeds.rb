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
guardians = Movie.create(name: "Guardians of the Galaxy", summary: "From Marvel, the studio that brought you the global blockbuster franchises of Iron Man, Thor, Captain America and The Avengers, comes a new team—the Guardians of the Galaxy. An action-packed, epic space adventure, Marvel’s \"Guardians of the Galaxy\" expands the Marvel Cinematic Universe into the cosmos, where brash adventurer Peter Quill finds himself the object of an unrelenting bounty hunt after stealing a mysterious orb coveted by Ronan, a powerful villain with ambitions that threaten the entire universe. To evade the ever-persistent Ronan, Quill is forced into an uneasy truce with a quartet of disparate misfits—Rocket, a gun-toting raccoon, Groot, a tree-like humanoid, the deadly and enigmatic Gamora and the revenge-driven Drax the Destroyer. But when Quill discovers the true power of the orb and the menace it poses to the cosmos, he must do his best to rally his ragtag rivals for a last, desperate stand—with the galaxy’s fate in the balance.", year_released: "2014", rating: "PG-13", genre: "Action", studio: "Marvel", runtime: "2 hrs 1 min", format: "Widescreen")

# Create the actors
puts "Creating actors..."
ford = Actor.create(name: "Harrison Ford")
fisher = Actor.create(name: "Carrie Fisher")
hanks = Actor.create(name: "Tom Hanks")
hunt = Actor.create(name: "Helen Hunt")
pratt = Actor.create(name: "Chris Pratt")
zoe = Actor.create(name: "Zoe Saldana")
dave = Actor.create(name: "Dave Bautista")
vin = Actor.create(name: "Vin Diesel")
bradley = Actor.create(name: "Bradley Cooper")

puts "Creating roles..."

# Create the roles for Raiders of the Lost Ark
Role.create(movie_id: raiders.id, actor_id: ford.id, character_name: "Indiana Jones")

# Create the roles for Star Wars
Role.create(movie_id: star_wars.id, actor_id: ford.id, character_name: "Han Solo")
Role.create(movie_id: star_wars.id, actor_id: fisher.id, character_name: "Princess Leia")

# Create the roles for Apollo 13
Role.create(movie_id: apollo_13.id, actor_id: hanks.id, character_name: "Jim Lovell")

# Create the roles for Cast Away
Role.create(movie_id: cast_away.id, actor_id: hanks.id, character_name: "Chuck Noland")
Role.create(movie_id: cast_away.id, actor_id: hunt.id, character_name: "Kelly Frears")

# Create the roles for Guardians of the Galaxy
Role.create(movie_id: guardians.id, actor_id: pratt.id, character_name: "Peter Quill")
Role.create(movie_id: guardians.id, actor_id: zoe.id, character_name: "Gamora")
Role.create(movie_id: guardians.id, actor_id: dave.id, character_name: "Drax")
Role.create(movie_id: guardians.id, actor_id: vin.id, character_name: "Groot")
Role.create(movie_id: guardians.id, actor_id: bradley.id, character_name: "Rocket")

puts "There are now #{Movie.count} movies, #{Actor.count} actors, and #{Role.count} roles in the database."
