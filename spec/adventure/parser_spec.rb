# require './spec/spec_helper.rb'
# require_relative '../../lib/adventure'

# RSpec.describe Parser do
#   describe 'COMMANDS' do
#     it 'COMMANDS is a hash' do
#       expect(Parser::COMMANDS).to be_a Hash
#     end
#   end

#   describe '.interpet' do
#     it 'tests a flow of the game' do
#       Game.player = Player.new
#       expect(Parser.interpet('go to the north')).to eq "Blue Room\n This room is very blue.\n There are exits to the: [:south]"
#       expect(Parser.interpet('go south')).to eq "Dark Room\n It is a dark room\n You see: Dull Sword, Lamp\n Monsters: Grue\n There are exits to the: [:north, :south]"
#       expect(Parser.interpet('get the lamp')).to eq "You picked up the lamp"
#       expect(Parser.interpet('inventory')).to eq "You are holding: Lamp"
#       expect(Parser.interpet('look at sword')).to eq "You are holding: Lamp"
#     end
#   end
# end
