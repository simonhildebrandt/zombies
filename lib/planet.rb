require 'zombie'
require 'creature'

class Planet
  attr_accessor :dimensions, :zombies, :creatures, :porous

  def initialize(size, porous=false)
    @dimensions = size
    @zombies = []
    @creatures = []
    @porous = porous
  end

  def run_path(steps)
    zombies.each do |zombie|
      steps.each do |step|
        zombie.move(step)

        bitten_creatures = creatures_at_location(zombie.location)
        bitten_creatures.each {|c| zombies << Zombie.new(c.location) }
        self.creatures -= bitten_creatures
      end
    end
  end

  def score
    zombie_count - 1
  end

  def zombie_positions
    zombies.map(&:position)
  end

  def zombie_count
    zombies.count
  end

  def creatures_at_location(location)
    creatures.select{ |creature| creature.location == location }
  end

  def add_creature position
    creatures << Creature.new(Location.new(*position, self))
  end

  def add_zombie position
    zombies << Zombie.new(Location.new(*position, self))
  end
end
