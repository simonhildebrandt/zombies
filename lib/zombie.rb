require 'location'

class Zombie
  attr_accessor :planet, :location

  def initialize(planet, location)
    @planet = planet
    @location = location
  end

  def move(direction)
    location.move direction
  end
end
