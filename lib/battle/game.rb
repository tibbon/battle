module Game
  class << self
    attr_accessor :world

    NUM_PLAYERS = 2

    def run
      game_in_progress = true
      @world = World.new
      @players = Array.new(NUM_PLAYERS) { Player.new }
      while game_in_progress
        @players.each_with_index {|player, index| turn(player, index + 1) }
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
      puts "direct resources"

      # for each troop at camp
      # where do they want to go (x, y positions)
    end

    def resolve(player)
      puts "resolve moves"
    end
  end
end
