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
                :y_destination
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
  end

  def to_s
    "Type: #{type}, HP: #{hp},
      Attack: #{attack}, Speed: #{speed}, Vision: #{vision},
      X: #{x}, Y: #{y}"
  end

  def step_resolve
  end
end
