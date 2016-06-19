class Location
  attr_accessor :x, :y, :planet

  DIRECTIONS = {
    'U' => [0, -1],
    'D' => [0, 1],
    'L' => [-1, 0],
    'R' => [1, 0]
  }

  def initialize(x, y, planet)
    self.x = x; self.y = y; self.planet = planet
  end

  def ==(other)
    x == other.x && y == other.y
  end

  def move direction
    delta_x, delta_y = DIRECTIONS[direction]
    self.x += delta_x; self.y += delta_y
    if planet.porous
      self.x = self.x % planet.dimensions
      self.y = self.y % planet.dimensions
    else
      # Numeric.clamp, where, where are you? :)
      self.x = [0, x, planet.dimensions-1].sort[1]
      self.y = [0, y, planet.dimensions-1].sort[1]
    end
  end

  def position
    "#{x} #{y}"
  end

  def to_s
    "<Location:#{object_id} @ #{x}x#{y}"
  end
end
