require './lib/player.rb'

describe Player do
  describe '#initialize' do
    let (:martin) { Player.new('Martin', 'x') }
    let (:lalo) { Player.new('Lalo') }
    
    it 'returns Martin' do
      expect(martin.name).to eql 'Martin'
    end

    it 'returns x' do
      expect(martin.sign).to eql 'x'
    end

    it 'returns false' do
      expect(check_player(martin.name, lalo.name)).to eql false
    end

    it 'returns true' do
      expect(check_player(martin.name, martin.name)).to eql true
    end

    it 'returns false' do
      expect(check_sign(martin.sign)).to eql false
    end

    it 'returns true' do
      expect(check_sign('h')).to eql true
    end
  end
end
