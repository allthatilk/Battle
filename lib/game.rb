require_relative 'player'

class Game
attr_reader :players

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players =[player_1, player_2]
  end

  def attack(player)
    player.receive_damage
  end
end
