require 'active_record'

# Establish connection to the database
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql', # Change adapter to 'postgresql'
  database: 'rubyactiverecorddb', # Replace 'your_database_name' with your PostgreSQL database name
  username: 'postgres', # Replace 'your_username' with your PostgreSQL username
  password: 'Joshuga@2103', # Replace 'your_password' with your PostgreSQL password
  host: 'localhost', # Replace 'localhost' with your PostgreSQL host
  port: 5432 # Replace '5432' with your PostgreSQL port if different
)


begin
  ActiveRecord::Base.connection.active?
  puts "Successfully connected to database!"
rescue => e
  puts "Error connecting to database: #{e.message}"
end

# Define a User model
class User < ActiveRecord::Base
  #   self.table_name = 'Users' # need not Specify the table name explicitly

  # Assuming you want to match the columns in the Users table with model attributes
  # If column names differ from attribute names, you may need to specify column mappings
  # e.g., alias_attribute :fname, :first_name
end

# Create a new user
user = User.create(id: 7, fname: 'James', lname: 'Howell', email: 'james@example.com', salary: 55000)
print "Created User:\n\tName: #{user.fname} #{user.lname}, Email: #{user.email}, Salary: #{user.salary}\n"

# Read a user
user = User.find_by(id: 7)
puts "Retrieved User:\n\tName: #{user.fname} #{user.lname}, Email: #{user.email}, Salary: #{user.salary}\n"

# Update a user
user.update(fname: 'Jake')

# Read a user again
user = User.find_by(id: 7)
puts "Updated User:\n\tName: #{user.fname} #{user.lname}, Email: #{user.email}, Salary: #{user.salary}\n"

user.destroy()