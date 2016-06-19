class Planet
  attr_accessor :dimensions, :zombies

  def initialize(size)
    @dimensions = size
    @zombies = []
  end

  def iterate steps
    zombies.each do |zombie|
      steps.each do |step|
        zombie.move(step)
      end
    end
  end

  def add_zombie position
    zombies << Zombie.new(self, Location.new(*position))
  end
end
