# World
# Used to represent logic for the shared world
class World
  attr_accessor :full_map

  MAP_X_SIZE = 10
  MAP_Y_SIZE = 10

  def initialize(blank: false)
    generate_map(blank: blank)
  end

  def to_s
    @full_map.map do |row|
      row.map(&:tile_type).join(' ')
    end
  end

  def clear
    blank = true
    generate_map(blank: blank)
  end

  private

  def generate_map(blank: false)
    @full_map = Array.new(MAP_X_SIZE) do
      Array.new(MAP_Y_SIZE) { blank ? Location.new(:empty) : Location.new }
    end
  end
end
