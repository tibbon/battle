# require './spec/spec_helper.rb'
# require_relative '../../lib/adventure'

# RSpec.describe Monster do
#   describe "#initialize" do
#     it "returns a new Monster, which requires a name" do
#       monster = Monster.new(name: "grue")
#       expect(monster).to be_an Monster
#     end

#     it "optionally accepts a description" do
#       description = "hungry"
#       monster = Monster.new(name: "grue", description: description)
#       expect(monster).to be_an Monster
#       expect(monster.description).to eq description
#     end

#     it "optionally accepts agro as true" do
#       monster = Monster.new(name: 'grue', agro: true)
#       expect(monster).to be_an Monster
#       expect(monster.agro).to be true
#     end
#   end

#   describe '#agro' do
#     it 'returns the agro state of the monster' do
#       name = 'grue'
#       monster = Monster.new(name: name)
#       expect(monster.agro).to be false
#       expect(monster.name).to eq name
#       monster.agro = true
#       expect(monster.agro).to be true
#       expect(monster.name).to eq ('Angry ' + name)
#     end
#   end

#   describe '#health_too_low?' do
#     it 'returns if the health is too low' do
#       monster = Monster.new(name: 'grue')
#       expect(monster.health_too_low?).to be false
#       monster.health = 0
#       expect(monster.health_too_low?).to be true
#     end
#   end

#   describe '#attack' do
#     it 'returns the proper string after attacking' do
#       monster = Monster.new(name: 'grue')
#       player = Player.new
#       expect(player.health).to eq 20
#       monster.attack(player)
#       expect(player.health).to eq (20 - monster.damage_potential)
#     end
#   end

# end
