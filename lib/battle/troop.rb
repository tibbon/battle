# Troop
# The parent for all deployable resources, scout and soldier
class Troop
  attr_accessor :hp,
                :attack,
                :speed,
                :type,
                :vision,
                :x,
                :y,
                :x_destination,
                :y_destination,
                :observed_world

  def initialize(x:, y:, hp: 1, attack: 1, speed: 1, vision: 1)
    @hp = hp
    @x = x
    @y = y
    @attack = attack
    @speed = speed
    @vision = vision
    @type = self.class.to_s.downcase.to_sym
    @x_destination = nil
    @y_destination = nil
    @observed_world = World.new(blank: true)
  end

  def observe_surroundings(world)
    observed_world.full_map =
      observed_world.full_map
          .overlay(x, y, world.full_map.nearby(x, y, vision))
  end

  def go_home(home)
    self.x_destination = home[:x]
    self.y_destination = home[:y]
    self
  end

  def to_s
    "Type: #{type}, HP: #{hp},
      Attack: #{attack}, Speed: #{speed}, Vision: #{vision},
      X: #{x}, Y: #{y}
      Destination: #{x_destination}, Y: #{y_destination}"
  end

  def step_resolve
  end
end
