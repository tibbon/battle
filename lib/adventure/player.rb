class Player
  attr_accessor :location, :health, :inventory, :damage_potential

  def initialize
    @location = World::MAP[:dark_room]
    @health = 20
    @inventory = Inventory.new
    @damage_potential = 1
  end

  def to_s
    "Current health: #{@health}"
  end

  def open(target)
    @location.open(target)
  end

  def attack(target)
    if location.monsters[target]
      monster = location.monsters[target]
      monster.get_hit_for(damage_potential)
      "You wounded the #{monster.name} for #{damage_potential}"
    else
      'You attack the wind. '
    end
  end

  def move(direction)
    if @location.movement_valid?(direction)
      @location = @location.ajoining_room(direction)
      self.look
    else
      'Cannot go that way'
    end
  end

  def look(target: @location)
    target.describe
  end

  def show_inventory
    if inventory.empty?
      'Your hands and pockets are empty.'
    else
      "You are holding: #{inventory}"
    end
  end

  def in_inventory?(target)
    @inventory.has_item?(target)
  end

  def put_down(target)
    # if inventory.drop_item(target)
    #   target = target.to_sym
    if in_inventory?(target)
      location.items[target] = inventory.remove_item(target)
    else
      'You cannot drop what you do not hold.'
    end
  end

  def pickup(target)
    if location.has_item?(target)
      inventory.add_item(target, location.remove_item(target))
      'You picked up the ' + target.to_s
    else
      'You are grasping at things that do not exist.'
    end
  end

  def drop(target)
  end

end
