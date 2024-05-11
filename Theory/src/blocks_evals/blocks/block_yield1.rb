# yield is used to call back to block
def a_method(a, b)
    a + yield(a, b)
end

# method is passed arguments plus block of code
a_method(1, 2) {|x, y| (x + y) * 3 } # => 10

