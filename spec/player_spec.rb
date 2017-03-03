require 'player'

describe Player do
  subject(:player) {described_class.new("Susan")}
  describe "#player" do
    it "returns the player name" do

      expect(player.name).to eq("Susan")
    end
  end
end
