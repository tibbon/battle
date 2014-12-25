module Parser

  STOP_WORDS = ["a", "an", "be", "the", "to", "at"]

  COMMANDS = {
              walk: :move,
              go: :move,
              move: :move,
              look: :look,
              describe: :look,
              get: :pickup,
              pickup: :pickup,
              grab: :pickup,
              drop: :put_down,
              inventory: :show_inventory,
              i: :show_inventory,
              hit: :attack,
              attack: :attack,
              me: :to_s
            }

  def self.interpet(input)
    input_words = strip_stopwords(input.downcase.split(' '))
    if COMMANDS.has_key?(input_words.first.to_sym)
      Game.player.method(COMMANDS[input_words.first.to_sym])
        .call(*input_words[1..-1].map(&:to_sym))
    else
      not_understood
    end
  end

  private

  def self.not_understood
    [
      'I don\'t think I understand you.',
      'Try again please',
      'You aren\'t making much sense.',
      'English motherfucker, do you speak it?',
      'Are you drunk, or just incoherient?',
      'I have no idea what you mean',
      'These words you keep saying, I do not thing they mean what you think they mean.'
    ].sample
  end

  # Needs more tests
  def self.strip_stopwords(words)
    words - STOP_WORDS
  end
end
