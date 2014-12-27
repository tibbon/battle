require './spec/spec_helper.rb'
require_relative '../../lib/battle'

RSpec.describe Troop do
  before(:each) {
    @x_position = 1
    @y_position = 1
    @troop = Troop.new(x: @x_position, y: @y_position)
    @world = World.new
  }
  describe '#initialize' do
    it 'creates a troop' do
      expect(@troop).to be_a Troop
      expect(@troop.x).to eq @x_position
      expect(@troop.y).to eq @y_position
      expect(@troop.hp).to eq 1
      expect(@troop.attack).to eq 1
      expect(@troop.vision).to eq 1
      expect(@troop.speed).to eq 1
      expect(@troop.class.superclass).to be Object
    end
  end

  describe '#observe_surroundings' do
    it 'returns an array of the world around them' do
      expect(@troop.observe_surroundings(@world)).to be_an Array

      # Since this randomly generates, testing gets harder.
      # I need fixed world seeds to make this work
      # expect(@troop.observe_surroundings(@world)).to eq []
    end
  end

  describe '#go_home' do
    it 'sets the destination of the troop to go to camp' do
      expect(@troop.x_destination).to eq nil
      expect(@troop.y_destination).to eq nil
      expect(@troop.go_home({ x: 10, y: 10 })).to eq @troop
      expect(@troop.x_destination).to eq 10
      expect(@troop.y_destination).to eq 10
    end
    it 'returns self' do
      expect(@troop.go_home({ x: 10, y: 10 })).to eq @troop
    end
  end
end
