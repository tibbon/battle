require './spec/spec_helper.rb'
require_relative '../../lib/battle'

RSpec.describe Array do

  before(:each) do
    # Generates a 10x10 2D array with numbers 0..100
    # as the contents
    @two_d_array = Array.new(10) do |x|
      (x*10..x*10+10).to_a
    end

    @near_one = [
                  [22, 23, 24],
                  [32, 33, 34],
                  [42, 43, 44]
                ]
    @near_two = [
                  [11, 12, 13, 14, 15],
                  [21, 22, 23, 24, 25],
                  [31, 32, 33, 34, 35],
                  [41, 42, 43, 44, 45],
                  [51, 52, 53, 54, 55]
                ]

    @overlay_result = [
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", 22, 23, 24, "?", "?", "?", "?"],
                        ["?", "?", "?", 32, 33, 34, "?", "?", "?", "?"],
                        ["?", "?", "?", 42, 43, 44, "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"]
                      ]

                      [
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", 22, 23, 24, "?", "?", "?"],
                        ["?", "?", "?", "?", 32, 33, 34, "?", "?", "?"],
                        ["?", "?", "?", "?", 42, 43, 44, "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"],
                        ["?", "?", "?", "?", "?", "?", "?", "?", "?", "?"]
                      ]

  end

  describe "#nearby" do
    it "returns an array of the points nearby" do
      expect(@two_d_array).to be_an Array
      expect(@two_d_array.nearby(3, 3, 1)).to be_an Array
      expect(@two_d_array.nearby(3, 3, 1)).to eq @near_one
      expect(@two_d_array.nearby(3, 3, 2)).to eq @near_two
    end
  end


  describe '#overlay' do
    it 'returns the array with a smaller array on top of it' do
      blank_map = Array.new(World::MAP_X_SIZE) do
        Array.new(World::MAP_Y_SIZE) { '?' }
      end
      expect(blank_map.overlay(4, 4, @near_one)).to eq @overlay_result
    end
  end

end
