class Planet
  attr_accessor :dimensions, :zombies

  def initialize(size)
    @dimensions = size
    @zombies = []
  end

  def add_zombie position
    zombies << Zombie.new(self, Location.new(*position))
  end
end
