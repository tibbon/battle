require './spec/spec_helper.rb'
require_relative '../../lib/battle'

RSpec.describe NotRandom do
  describe '.rand' do
    it 'returns a non-random number' do
      expect(NotRandom.rand).to eq 0
    end
  end
end
