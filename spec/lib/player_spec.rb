require 'spec_helper'
require_relative '../../lib/player.rb'

RSpec.describe Player do
  let (:player) { Player.new("Apollo", "blue") }

  describe ".new" do
    it "takes a name and color as an argument" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("Apollo")
    end

    it "makes sure you didn't hardcode the player's name" do
      new_player = Player.new("Sion Sono")
      expect(new_player.name).to eq("Sion Sono")
    end
  end

  describe "#color" do
    it "has a reader for color" do
      expect(player.color).to eq("blue")
    end
  end

  describe "#lost" do
    it "has a reader for lost status" do
      expect(player.lost).to eq(false)
    end
    it "has a writer for lost status" do
      expect { player.lost = true }.to_not raise_error
    end
  end

  describe "#matches" do
    it "has a reader for matches" do
      expect(player.matches).to eq(0)
    end
    it "has a writer for matches" do
      expect { player.matches += 1 }.to_not raise_error
    end
  end
end
