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
