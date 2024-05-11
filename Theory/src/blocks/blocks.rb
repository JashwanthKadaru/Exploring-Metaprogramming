# yield is used to call back to block
def a_method(a, b)
    a + yield(a, b)
end

# method is passed arguments plus block of code
a_method(1, 2) {|x, y| (x + y) * 3 } # => 10



# checking if block is passed or notusing block_given? method of Kernel
def a_method
    return yield if block_given?
    'no block'
end

# calls
a_method # => "no block"
a_method { "here's a block!" } # => "here's a block!"


# Definition of using inside Kernel.
module Kernel
    def using(resource)
        begin
            yield # block of code is executed as it is. Errors are not intercepted.
        ensure
            resource.dispose # At the end resource is disposed.
        end
    end
end

# testing using module
module TestUsing
    class Resource
        def dispose
            @disposed = true
        end
        def disposed?
            @disposed
        end
    end

    def test_disposes_of_resources
        r = Resource.new
        using(r) {}
        assert r.disposed?
    end
    
    def test_disposes_of_resources_in_case_of_exception
        r = Resource.new
        assert_raises(Exception) {
            using(r) {
                raise Exception
            }
        }
        assert r.disposed?
    end
end

# Blocks as closures
def my_method
    x = "Goodbye"
    yield("cruel")
end

x = "Hello"
my_method {|y| "#{x}, #{y} world" } # => "Hello, cruel world"

# Scope Gates: module, class, def
v1 = 1
class MyClass # SCOPE GATE: entering class
    v2 = 2
    local_variables # => ["v2"]
    def my_method # SCOPE GATE: entering def
        v3 = 3
        local_variables
    end # SCOPE GATE: leaving def
    
    local_variables # => ["v2"]
end # SCOPE GATE: leaving class

obj = MyClass.new
obj.my_method # => [:v3]
local_variables # => [:v1, :obj]


# Proc : callable objects
def my_method(&the_proc)
    the_proc
end

p = my_method {|name| "Hello, #{name}!" }
p.class # => Proc
p.call("Bill") # => "Hello, Bill!"


# class_eval: manipulation of class definition at runtime
def add_method_to(a_class)
    a_class.class_eval do
        def m; 'Hello!'; end
    end
end

add_method_to String
"abc".m # => "Hello!"


# instance_eval: execution in the context of object
class CleanRoom
    def current_temperature
        # ...
    end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
    if current_temperature < 20
        # TODO: wear jacket
    end
end


# singleton methods & classes
str = "just a regular string"
def str.title?
    self.upcase == self
end

str.title? # => false
str.methods.grep(/title?/) # => [:title?]
str.singleton_methods # => [:title?]

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


# Class macros
def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
        warn "Warning: #{old_method}() is deprecated. Use #{new_method}()."
        send(new_method, *args, &block)
    end
end

deprecate :GetTitle, :title
deprecate :LEND_TO_USER, :lend_to
deprecate :title2, :subtitle


# class MyClass
#     attr_accessor :my_attribute
# end
