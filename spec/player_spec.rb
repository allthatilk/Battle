require 'player'

describe Player do
  subject(:susan) { described_class.new("Susan") }
  subject(:clive) { described_class.new("Clive") }

  describe "#player" do
    it "returns the player name" do
      expect(susan.name).to eq("Susan")
    end
  end

  describe '#hit_points' do
    it 'returns the hit_points' do
      expect(susan.hit_points).to eq described_class::HP_MAX
    end
  end

  describe '#attack' do
    it 'damanages the player' do
      expect(susan).to receive(:receive_damage)
      clive.attack(susan)
    end
  end

  describe '#receive_damange' do
    it 'reduces the player hit points' do
      expect {susan.receive_damage}.to change {susan.hit_points}.by -(described_class::MINUS_HP)
    end
  end


end
