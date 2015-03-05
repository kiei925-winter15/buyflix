require 'csv'

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Studio.delete_all
Movie.delete_all
Actor.delete_all
Role.delete_all
User.delete_all

# Create users
User.create(name: "Brian", email: "b-eng@kellogg.northwestern.edu", password: "secret")

puts "There are now #{Movie.count} movies, #{Actor.count} actors, #{Role.count} roles, and #{User.count} users in the database."
