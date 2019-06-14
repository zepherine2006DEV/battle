class Player

attr_reader :name, :hp

ATTACK_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp_by_attack_damage
    @hp -= ATTACK_DAMAGE
  end

end
