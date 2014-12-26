# Player
# represents a player for the game, human or computer
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
    # build a new array, start it as blank
    blank_map = Array.new(World::MAP_X_SIZE) do
      Array.new(World::MAP_Y_SIZE) { '?' }
    end
    # fill in what is known

    info = world.full_map.nearby(camp.location[:x], camp.location[:y], 1)
    blank_map = blank_map.overlay(camp.location[:x], camp.location[:y], info)
    blank_map.map do |row|
      row.map { |tile| tile }.join(' ')
    end
  end

  def army_status
    troops.map(&:to_s).join("\n")
  end

  private

  def initialize_camp
    @camp = Camp.new
  end

  def initialize_army
    troops.concat(Array.new(INITIAL_SCOUTS) do
      Scout.new(x: @camp.location[:x], y: @camp.location[:y])
    end)
    troops.concat(Array.new(INITIAL_SOLDIERS) do
      Soldier.new(x: @camp.location[:x], y: @camp.location[:y])
    end)
  end
end
