class Player

  attr_reader :name, :hit_points

  HP_MAX = 100
  MINUS_HP = 10

  def initialize(name)
    @name = name
    @hit_points = HP_MAX
  end

  # def attack(player)
  #   player.receive_damage
  # end

  def receive_damage
    @hit_points -= MINUS_HP
  end
end
