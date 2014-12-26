class Camp
  attr_accessor :location
  @@camp_number = 0
  START_LOCATIONS = [
      {x: 1, y: 1},
      {x: 8, y: 8},
      {x: 8, y: 1},
      {x: 1, y: 8}
    ]
  def initialize
    @location = START_LOCATIONS[@@camp_number]
    @@camp_number += 1
  end

  def position_string
    "Home camp location; x: #{@location[:x]}, y: #{@location[:y]}"
  end

end
