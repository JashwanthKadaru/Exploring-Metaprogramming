require 'sinatra'
require 'faker'

greeting = Faker::GreekPhilosophers.quote

# Define a Sinatra application
class MyApp < Sinatra::Base
  # Define routes dynamically using metaprogramming
  ['/', '/hello', '/about', '/greet'].each do |route|
    get route do
      if route == '/greet'
        "Time: #{Time.now.strftime('%Y-%m-%d %H:%M:%S')}<br>" \
        "Random Greeting: #{greeting = Faker::GreekPhilosophers.quote}"
      else
        "This is the #{route} route!"
      end
    end
  end

  # Define a custom route using metaprogramming
  ['get', 'post', 'put', 'delete'].each do |method|
    send(method, "/custom_#{method}") do
      "This is a custom #{method.upcase} route!"
    end
  end

  # Define a helper method using metaprogramming
  helpers do
    def greet(name)
      "Hello, #{name}!"
    end
  end

  # Define a before filter using metaprogramming
  before do
    @time = Time.now.strftime('%Y-%m-%d %H:%M:%S')
    @greeting = Faker::GreekPhilosophers.quote
  end

  # Define a route that uses helper and instance variables
  get '/greet/:name' do
    "Time: #{@time}<br>" \
    "Message: #{@greeting}, #{(params[:name])}"
  end
end

# Run the application
MyApp.run! port 4566
