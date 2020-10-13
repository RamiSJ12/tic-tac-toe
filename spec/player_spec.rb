# frozen_string_literal: true

require_relative '../lib/player.rb'
describe Player do
  describe '#initialize' do
    let(:martin) { Player.new('Martin', 'x') }
    let(:lalo) { Player.new('Lalo') }
    it 'returns Martin' do
      expect(martin.name).to eql 'Martin'
    end

    it 'returns x' do
      expect(martin.sign).to eql 'x'
    end
  end
end
