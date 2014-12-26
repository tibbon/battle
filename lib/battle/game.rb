# Game module holds the primary game loop logic
# and code needed for running the game itself
# currently too complex
module Game
  class << self
    attr_accessor :world

    NUM_PLAYERS = 2

    def run
      game_in_progress = true
      @world = World.new
      @players = Array.new(NUM_PLAYERS) { Player.new }
      while game_in_progress
        @players.each_with_index { |player, index| turn(player, index + 1) }
      end
    end

    private

    def turn(player, index)
      puts "Player: #{index}"
      display_info(player)
      direct_resources(player)
      resolve(player)
      puts "\e[H\e[2J" # Clear screen
    end

    def display_info(player)
      puts player.to_s
      player.display_reports(world)
    end

    def direct_resources(player)
      puts "\n Direct Troops:"

      player.camp_troops.each do |troop|
        puts "#{troop.type} needs a destination"
        puts "X destination? "
        troop.x_destination = gets.chomp.to_i
        puts "Y destination? "
        troop.y_destination = gets.chomp.to_i
        puts "#{troop.type} headed to #{troop.x_destination}, #{troop.y_destination} at speed of #{troop.speed}"
      end
      sleep(1)
    end

    def resolve(player)
      player.troops.each do |troop|
        # Clunky, but should work to get them moving for now.
        troop.speed.times do
          if (troop.y_destination == troop.y) && (troop.x_destination == troop.x)
            troop.go_home(player.camp.location)
            binding.pry
          end
          if troop.x_destination > troop.x
            troop.x += 1
          end
          if troop.x_destination < troop.x
            troop.x -= 1
          end
          if troop.y_destination > troop.y
            troop.y += 1
          end
          if troop.y_destination < troop.y
            troop.y -= 1
          end


          troop.observe_surroundings
        end
      end
      puts 'resolve moves'
    end
  end
end
