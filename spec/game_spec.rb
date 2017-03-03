require 'game'

describe Game do
let(:player1) { Player.new("Susan") }
let(:player2) { Player.new("Clive") }
subject(:game) { described_class.new(player1, player2) }

  describe '#attack' do
    it 'the player receives damage' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end
end
