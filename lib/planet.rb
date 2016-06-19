class Planet
  attr_accessor :dimensions, :zombies, :creatures

  def initialize(size)
    @dimensions = size
    @zombies = []
    @creatures = []
  end

  def iterate(steps)
    zombies.each do |zombie|
      steps.each do |step|
        zombie.move(step)

        bitten_creatures = creatures_at_location(zombie.location)
        self.zombies += bitten_creatures.map(&:zombified)
        self.creatures -= bitten_creatures
      end
    end
  end

  def creatures_at_location(location)
    creatures.select{ |creature| creature.location == location }
  end

  def add_creature position
    creatures << Creature.new(Location.new(*position))
  end

  def add_zombie position
    zombies << Zombie.new(Location.new(*position))
  end
end
