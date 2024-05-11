class Mystery
  def method_missing(name, *args)[^1^][1][^2^][2]
    puts "Looking for..."
    puts "#{name} with parameters #{args.join(', ')}?[^3^][3] Sorry, not found."
  end
end

m = Mystery.new
m.any_method(123, 'abc')
