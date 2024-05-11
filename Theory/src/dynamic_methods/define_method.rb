class Greeter
  def self.create_method(name, &block)
    define_method(name, &block)
  end

  create_method(:hello) { "Hello, World!" }
end

greet = Greeter.new
puts greet.hello # Outputs: Hello, World!
