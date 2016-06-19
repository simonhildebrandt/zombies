require 'planet'
require 'zombie'
require 'creature'

class Runner
  attr_accessor :planet, :zombie_path

  def initialize(path)
    read_path(path)
  end

  def start
    planet.iterate zombie_path
  end

  def read_path path
    File.open(path, 'r') do |file|
      set_dimensions(file.readline.strip)
      set_initial(file.readline.strip)
      set_creatures(file.readline.strip)
      set_zombie_path(file.readline.strip)
    end
  end

  def set_dimensions d
    self.planet = Planet.new(d.to_i)
  end

  def set_initial l
    planet.add_zombie l.split(' ').map(&:to_i)
  end

  def set_creatures creature_data
    creature_data.split(',').each do |position|
      planet.add_creature position.split(' ').map(&:to_i)
    end
  end

  def set_zombie_path path_data
    self.zombie_path = path_data.split('')
  end
end
