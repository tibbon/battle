# Represents a camp or home base for a player
# currently each player can only have one camp
# from the camp is where assignments to your troops can be made
class Camp
  attr_accessor :location
  @@camp_number = 0
  START_LOCATIONS = [
    { x: 1, y: 1 },
    { x: World::MAP_X_SIZE - 2, y: World::MAP_Y_SIZE - 2 },
    { x: World::MAP_X_SIZE - 2, y: 1 },
    { x: 1, y: World::MAP_Y_SIZE - 2 }
  ]
  def initialize
    @location = START_LOCATIONS[@@camp_number]
    @@camp_number += 1
  end

  def position_string
    "Home camp location; x: #{@location[:x]}, y: #{@location[:y]}"
  end
end
