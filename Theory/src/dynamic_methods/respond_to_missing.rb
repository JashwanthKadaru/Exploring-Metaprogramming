class MyDynamicClass
  def method_missing(method_name, *args, &block)[^1^][1][^2^][2]
    if method_name.to_s.start_with?('dynamic_')
      "You called a dynamic method: #{method_name}"
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)[^3^][3]
    method_name.to_s.start_with?('dynamic_') || super
  end
end

obj = MyDynamicClass.new[^4^][4]
puts obj.dynamic_hello # Outputs: You called a dynamic method: dynamic_hello
puts obj.respond_to?(:dynamic_hello) # Outputs: true
puts obj.respond_to?(:nonexistent_method) # Outputs: false
