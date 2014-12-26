# Location
# instances represent a specific location
# currently this is just used for tiles
class Location
  def initialize
    @terrain = %w( mountain water forest desert ).sample
  end

  def tile_type
    @terrain[0]
  end
end
