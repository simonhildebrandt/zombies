class Location
  attr_accessor :x
  attr_accessor :y

  DIRECTIONS = {
    'U' => [0, -1],
    'D' => [0, 1],
    'L' => [-1, 0],
    'R' => [1, 0]
  }

  def initialize(x, y)
    self.x = x; self.y = y
  end

  def ==(other)
    x == other.x && y == other.y
  end

  def move direction
    delta_x, delta_y = DIRECTIONS[direction]
    self.x += delta_x; self.y += delta_y
  end

  def to_s
    "<Location:#{object_id} @ #{x}x#{y}"
  end
end
