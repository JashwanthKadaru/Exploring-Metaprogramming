class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

# Usage
bird = Bird.new
puts bird.move # Output: I can move by flying
