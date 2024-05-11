require 'active_record'

# Establish connection to the PostgreSQL database
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql', # PostgreSQL adapter
  database: 'rubyactiverecorddb', # Replace 'rubyactiverecorddb' with your PostgreSQL database name
  username: 'postgres', # Replace 'postgres' with your PostgreSQL username
  password: 'Joshuga@2103', # Replace 'Joshuga@2103' with your PostgreSQL password
  host: 'localhost', # Replace 'localhost' with your PostgreSQL host
  port: 5432 # Replace '5432' with your PostgreSQL port if different
)

begin
  ActiveRecord::Base.connection.active?
  puts "Successfully connected to database!"
rescue => e
  puts "Error connecting to database: #{e.message}"
end

# Define a Movie model
class Movie < ActiveRecord::Base
    # self.table_name = '"movies"' # Specify the table name explicitly
end

# Create a new movie
movie = Movie.create(id: 7, title: 'Inception 2', director: 'Christopher Nolan')
print "Created Movie:\n\tTitle: #{movie.title}, Director: #{movie.director}\n"

# Read a movie
movie = Movie.find_by(title: 'Inception 2')
puts "Retrieved Movie:\n\tTitle: #{movie.title}, Director: #{movie.director}\n"

# Update a movie
movie.update(director: 'Quentin Tarantino')

# Read the updated movie
movie = Movie.find_by(title: 'Inception 2')
puts "Updated Movie:\n\tTitle: #{movie.title}, Director: #{movie.director}\n"

# Destroy the movie
movie.destroy()
