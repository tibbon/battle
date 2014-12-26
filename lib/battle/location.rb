class Location
  def initialize
    @terrain = ['mountain', 'water', 'forrest', 'desert'].sample
  end

  def tile_type
    @terrain[0]
  end
end
