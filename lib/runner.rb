require 'planet'
require 'zombie'

class Runner
  attr_accessor :planet

  def initialize(path)
    read_path(path)
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
  end

  def set_zombie_path path_data
  end
end
