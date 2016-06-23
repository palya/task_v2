class Rover
  attr_accessor :position, :direction

  def initialize(position=[0, 0], direction)
    @position  = position
    @direction = direction
  end

  def coordinates
    "Rover reached #{position[0]} #{position[1]} #{direction}!"
  end
end
