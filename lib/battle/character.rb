class Character
  attr_accessor :experience

  def initialize
    @health = rand(10..20)
    @experience = rand(1..100)
    @hunger = rand(2..5)
  end

  def simulate
    @experience += 1
    @health -= @hunger
    @hunger += 1

    if @hunger > 5
      forage
    end
  end

  def forage
    @hunger -= 5
    puts "Looking for food"
  end

  def status
    "Health: #{@health}, Experience: #{@experience}"
  end

  def alive?
    !dead?
  end

  def dead?
    @health < 1
  end
end
