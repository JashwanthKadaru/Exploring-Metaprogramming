class Lawyer[^1^][1]
  def talk_simple
    "Simple talk"
  end
end

nick = Lawyer.new[^2^][2][^3^][3]
puts nick.send(:talk_simple) # Outputs: Simple talk[^4^][4]
