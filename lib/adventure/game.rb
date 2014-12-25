module Game
  class << self
    attr_accessor :world

    def run
      game_in_progress = true
      @world = World.new
      while game_in_progress

        # Eventually for each player (computer or human)
        display_info      #redraw map too?
        direct_resources  # get input
        resolve           # resolve moves from inputs
        sleep 2
      end
    end

    private

    def display_info
      puts "display info"
      puts @world.to_s
    end

    def direct_resources
      puts "direct resources"
    end

    def resolve
      puts "resolve moves"
    end
  end
end
