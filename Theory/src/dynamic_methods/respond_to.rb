class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name, *args)
    super unless @data_source.respond_to?("get_#{name}_info")[^1^][1]
    info = @data_source.send("get_#{name}_info", @id)
    "Info: #{info}"
  end

  def respond_to_missing?(method, include_private = false)[^2^][2]
    @data_source.respond_to?("get_#{method}_info") || super[^1^][1]
  end
end

# Usage
data_source = OpenStruct.new(get_mouse_info: 'Mouse info', get_keyboard_info: 'Keyboard info')
computer = Computer.new(42, data_source)
puts computer.mouse # => "Info: Mouse info"
puts computer.respond_to?(:mouse) # => true[^3^][3]
