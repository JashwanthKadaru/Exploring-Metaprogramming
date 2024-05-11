# alias_method
class MyClass
    def my_method; 'my_method()'; end
    alias_method :m, :my_method
end

obj = MyClass.new
obj.my_method # => "my_method()"
obj.m # => "my_method()"

class MyClass
    alias_method :m2, :m
end
obj.m2 # => "my_method()"

# method wrapper
class String
    alias_method :real_length, :length
    def length
        real_length > 5 ? 'long' : 'short'
    end
end

"War and Peace".length # => "long"
"War and Peace".real_length # => 13
