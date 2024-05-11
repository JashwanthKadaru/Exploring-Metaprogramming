require 'pg'

# Connect to the PostgreSQL database
conn = PG.connect(dbname: 'rubyactiverecorddb', user: 'postgres', password: 'Joshuga@2103', host: 'localhost', port: 5432)

# Retrieve a random movie from the database
result = conn.exec('SELECT * FROM movies ORDER BY RANDOM() LIMIT 1').first

if result
  # Extract movie information
  title = result['title']
  director = result['director']

  # Display information about the randomly selected movie
  puts "Let's talk about the movie '#{title}' directed by #{director}."
else
  puts "No movies found in the database."
end

# Close the database connection
conn.close if conn
