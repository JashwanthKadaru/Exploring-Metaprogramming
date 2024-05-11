# singleton methods & classes
str = "just a regular string"
def str.title?
    self.upcase == self
end

str.title? # => false
str.methods.grep(/title?/) # => [:title?]
str.singleton_methods # => [:title?]
str.singleton_class # => #<Class:#<String:0x331df0>>