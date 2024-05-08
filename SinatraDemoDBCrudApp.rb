require 'sinatra'
require 'pg'

# Define a Sinatra application
class MyApp < Sinatra::Base
  configure do
    # Connect to PostgreSQL database
    set :db, PG.connect(dbname: 'rubyactiverecorddb', user: 'postgres', password: 'Joshuga@2103',  host: 'localhost', port: 5432)
  end



  # Define dynamic routes using metaprogramming
  ['select', 'update', 'insert'].each do |operation|
    send(:get, "/#{operation}/:id/?*") do
      send("#{operation}_operation", params)
    end
  end

  # Method to handle select operation
  def select_operation(params)
    id = params[:id]
    result = settings.db.exec_params('SELECT * FROM persons WHERE id = $1', [id])
    result.to_a.to_json
  end

  # Method to handle update operation
  def update_operation(params)
    id = params[:id]
    fname = params[:fname]
    lname = params[:lname]
    email = params[:email]
    settings.db.exec_params('UPDATE persons SET fname = $1, lname = $2, email = $3 WHERE id = $4', [fname, lname, email, id])
    "Updated record with ID #{id}"
  end

  # Method to handle insert operation
  def insert_operation(params)
    id = params[:id]
    fname = params[:fname]
    lname = params[:lname]
    email = params[:email]
    settings.db.exec_params('INSERT INTO persons (id, fname, lname, email) VALUES ($1, $2, $3, $4)', [id, fname, lname, email])
    "Inserted record with ID #{id}"
  end

  # Define a route to handle root path
  get '/' do
    'Welcome to the Sinatra DBCrud Operations App!'
  end
end

# Run the application
MyApp.run! port: 4568
