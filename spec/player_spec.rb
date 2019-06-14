require 'player'

describe Player do

  subject(:player1) { Player.new("Godzilla") }

  describe '::new' do
    it 'should store its name' do
      expect(player1.name).to eql("Godzilla")
    end

    it "should have 100 HP as default" do
      expect(player1.hp).to eql(100)
    end
  end

  describe '#reduce' do
    it "should reduce HP" do
      subject.reduce_hp_by_attack_damage
      expect(subject.hp).to eql(90)
    end
  end
end
