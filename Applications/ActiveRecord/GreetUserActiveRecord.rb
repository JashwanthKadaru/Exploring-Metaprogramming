require 'pg'
require 'faker'

# Connect to the PostgreSQL database
conn = PG.connect(dbname: 'rubyactiverecorddb', user: 'postgres', password: 'Joshuga@2103', host: 'localhost', port: 5432)

# Retrieve a random user from the database
result = conn.exec('SELECT * FROM Users ORDER BY RANDOM() LIMIT 1').first

if result
  # Extract user information
  fname = result['fname']
  lname = result['lname']
  email = result['email']

  # Generate a random greeting message
  greeting = Faker::GreekPhilosophers.quote

  # Display personalized greeting
  puts "Hello, #{fname} #{lname} (#{email})! #{greeting}"
else
  puts "No users found in the database."
end

# Close the database connection
conn.close if conn
