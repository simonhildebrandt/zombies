require 'location'

class Zombie
  attr_accessor :planet, :location

  def initialize(location)
    @location = location
  end

  def move(direction)
    location.move direction
  end
end
