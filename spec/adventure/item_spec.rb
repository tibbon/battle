# require './spec/spec_helper.rb'
# require_relative '../../lib/adventure'

# RSpec.describe World::Item do
#   describe "#initialize" do
#     it "returns a new Item, which requires a name" do
#       item = World::Item.new(name: "lamp")
#       expect(item).to be_an(World::Item)
#     end

#     it "optionally accepts a description" do
#       item = World::Item.new(name: "lamp", description: "shiny")
#       expect(item).to be_an(World::Item)
#     end
#   end

#   describe "#name" do
#     it "returns the name of the Item" do
#       name = "lamp"
#       item = World::Item.new(name: name)
#       expect(item.name).to eq(name)
#     end

#     it "allows changing the name of the item" do
#       name = "lamp"
#       item = World::Item.new(name: "sword")
#       item.name = name
#       expect(item.name).to eq(name)
#     end
#   end
# end
