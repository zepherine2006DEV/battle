require 'player'

describe Player do

  subject(:player1) { Player.new("Godzilla") }

  context 'when new' do
    it 'should be able to return its name' do
      expect(player1.name).to eql("Godzilla")
    end
  end
end