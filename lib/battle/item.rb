# Has no dependencies on other things

module World
  class Item
    attr_accessor :name, :description

    def initialize(name: , description: '')
      @name = name
      @description = description
    end
  end
end
