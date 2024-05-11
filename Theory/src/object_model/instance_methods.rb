class MyClass
    def my_method
        @v = 1
    end
end

obj = MyClass.new
obj.class # => MyClass

obj.instance_methods # => ["my_method"]