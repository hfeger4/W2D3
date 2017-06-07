require 'rspec'
require 'towers'


describe TowersOfHanoi do
  let(:tower_game) { TowersOfHanoi.new }

  describe "#initialize" do
    it "initializes 3 arrays to respresent towers" do
      expect(tower_game.towers).to eq([[3, 2, 1], [], [] ])
    end
  end

  describe "#move" do
    it "transfers element from one tower array to another" do
      expect(tower_game.move(0, 1)).to eq([1])
    end
  end

  describe "#won?" do

    it "checks second tower discs are in correct order" do
      tower_game.towers = [[],[3,2,1],[]]
      expect(tower_game.won?).to eq(true)
    end

    it "checks third tower discs are in the correct order" do
      tower_game.towers = [[],[],[3,2,1]]
      expect(tower_game.won?).to eq(true)
    end
  end
end
