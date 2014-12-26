# Location
# instances represent a specific location
# currently this is just used for tiles
class Location
  # Seed is there for testing this.
  def initialize(type=nil, seed: Random)
    @terrain = type ? '?' : %w( mountain water forest desert ).sample(random: seed)
  end

  def tile_type
    @terrain[0]
  end
end
