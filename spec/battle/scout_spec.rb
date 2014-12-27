require './spec/spec_helper.rb'
require_relative '../../lib/battle'

RSpec.describe Scout do
  before(:each) {
    @x_position = 1
    @y_position = 1
    @scout = Scout.new(x: @x_position, y: @y_position)
  }
  describe '#initialize' do
    it 'creates a scout' do
      expect(@scout).to be_a Scout
      expect(@scout.x).to eq @x_position
      expect(@scout.y).to eq @y_position
      expect(@scout.hp).to eq 1
      expect(@scout.attack).to eq 1
      expect(@scout.vision).to eq 2
      expect(@scout.speed).to eq 2
      expect(@scout.class.superclass).to be Troop
    end
  end
end
