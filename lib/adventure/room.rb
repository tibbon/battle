module World
  class Room
    attr_accessor :name, :description, :exits, :items, :monsters

    def initialize(name: name, description: 'empty room', monsters: {}, items: {}, exits: {})
      @name = name
      @exits = exits
      @items = items
      @monsters = monsters
      @description = description
    end

    def to_s
    end

    def open(target)
      target
    end

    def has_item?(target)
      items.has_key?(target)
    end

    def remove_item(target)
      items.delete(target)
    end

    def has_agro_monsters?
      monsters.values.map(&:agro).include? true
    end

    def agro_monsters
      monsters.values.select {|monster| monster.agro }
    end

    def describe
      room_description = "#{name}"
      room_description += "\n #{description}"
      unless items.empty?
        room_description += "\n You see: #{items.values.map(&:name).join(', ')}"
      end
      unless monsters.empty?
        room_description += "\n Monsters: #{monsters.values.map(&:name).join(', ')}"
      end
      room_description += "\n There are exits to the: #{exits.keys}"
      room_description
    end

    def movement_valid?(direction)
      exits.keys.include?(direction)
    end

    def ajoining_room(direction)
      World::MAP[self.exits[direction]]
    end
  end
end
