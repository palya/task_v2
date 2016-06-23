class Location
  attr_accessor :x_max, :y_max, :x_min, :y_min

  def initialize(x_max, y_max, x_min=0, y_min=0)
    @x_max = x_max
    @y_max = y_max
    @x_min = x_min
    @y_min = y_min
  end

  def allowed_to_move?(x, y)
    (x <= @x_max) && (x >= @x_min) && (y <= @y_max) && (y >= @y_min)
  end
end
