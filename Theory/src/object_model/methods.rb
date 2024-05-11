class MyClass
    def my_method
        @v = 1
    end
end

obj = MyClass.new

obj.class # => MyClass

obj.methods # => [ 'my_method', ...]

# more examples to differentiate methods from instance_methods
String.instance_methods == "abc".methods # => true
String.methods == "abc".methods # => fals