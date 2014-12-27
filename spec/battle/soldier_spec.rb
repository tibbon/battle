require './spec/spec_helper.rb'
require_relative '../../lib/battle'

RSpec.describe Soldier do
  before(:each) {
    @x_position = 1
    @y_position = 1
    @soldier = Soldier.new(x: @x_position, y: @y_position)
  }
  describe '#initialize' do
    it 'creates a soldier' do
      expect(@soldier).to be_a Soldier
      expect(@soldier.x).to eq @x_position
      expect(@soldier.y).to eq @y_position
      expect(@soldier.hp).to eq 3
      expect(@soldier.attack).to eq 2
      expect(@soldier.vision).to eq 1
      expect(@soldier.speed).to eq 1
      expect(@soldier.class.superclass).to be Troop
    end
  end
end
