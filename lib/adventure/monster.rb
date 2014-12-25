# Monster doesn't have a good way to 'listen' for messages about being damaged
# unsure if that's a good separation of tasks

class Monster
  attr_accessor :health, :agro, :description, :damage_potential
  attr_writer :name

  def initialize(name:, description: '', agro: false)
    @health = rand 2..10
    @damage_potential = rand 2..4
    @name = name
    @description = description
    @agro = agro
  end

  def to_s
    name
  end

  def get_hit_for(damage)
    @health = @health - damage
    agro = true
  end

  def health_too_low?
    health < 1
  end


  # Unsure how to test the depencency here.
  def attack(target)
    target.health -= damage_potential
    "The #{name} attacks you for #{damage_potential}."
  end

  def name
    agro ? 'Angry ' + @name : @name
  end

end
