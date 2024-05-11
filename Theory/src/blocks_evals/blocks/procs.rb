# Proc Example
# Defining a proc that takes a number and increments it
increment = Proc.new { |x| x + 1 }[^1^][1]

# Use the proc to increment a number by a method call.
puts increment.call(5)  # Output: 6
