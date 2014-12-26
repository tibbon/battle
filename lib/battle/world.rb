class World
  attr_accessor :full_map

  MAP_X_SIZE = 10
  MAP_Y_SIZE = 10

  def initialize
    generate_map
  end

  # To aid in printing of the map for debugging purposes
  def to_s
    @full_map.map do |row|
      row.map {|location| location.tile_type }
         .join(' ')
    end
  end

  private

  def generate_map
    @full_map = Array.new(MAP_X_SIZE) {|x| Array.new(MAP_Y_SIZE) {|x| Location.new }}
  end
end

