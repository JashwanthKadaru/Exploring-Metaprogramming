# Blocks as closures
def my_method
    x = "Goodbye"
    yield("cruel")
end

x = "Hello"
my_method {|y| "#{x}, #{y} world" } # => "Hello, cruel world"

