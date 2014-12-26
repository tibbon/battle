class Player
  attr_accessor :money, :troops, :camp

  INITIAL_SOLDIERS = 1
  INITIAL_SCOUTS = 2

  def initialize(money: 100)
    @money = money
    @troops = []
    initialize_camp
    initialize_army
  end

  def to_s
    "Money: #{money} \n" +
    army_status +
    "\n" +
    @camp.position_string
  end

  def display_reports(world)
    puts map_near_camp(world)
  end

  def camp_troops

  end

  def map_near_camp(world)
    #build a new array, start it as blank
    blank_map = Array.new(World::MAP_X_SIZE) {|x| Array.new(World::MAP_Y_SIZE) {|x| '?' }}
    #fill in what is known

    info = world.full_map.nearby(camp.location[:x], camp.location[:y], 1)
    blank_map = blank_map.overlay(camp.location[:x], camp.location[:y], info)
    blank_map.map { |row|
      row.map {|tile| tile }
         .join(' ')
      }
  end

  def army_status
    troops.map {|troop| troop.to_s }.join("\n")
  end

  private

  def initialize_camp
    @camp = Camp.new()
  end

  def initialize_army
    troops.concat(Array.new(INITIAL_SCOUTS) { Scout.new(x: @camp.location[:x], y: @camp.location[:y]) } )
    troops.concat(Array.new(INITIAL_SOLDIERS) { Soldier.new(x: @camp.location[:x], y: @camp.location[:y]) })
  end
end

