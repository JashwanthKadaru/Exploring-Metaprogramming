# checking if block is passed or notusing block_given? method of Kernel
def a_method
    return yield if block_given?
    'no block'
end

# calls
a_method # => "no block"
a_method { "here's a block!" } # => "here's a block!"

