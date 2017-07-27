require 'spec_helper'
require_relative '../../lib/piece.rb'

RSpec.describe Piece do
  let (:piece) { Piece.new(1) }

  describe ".new" do
    it "takes location on the board as an argument" do
      expect(piece).to be_a(Piece)
    end
  end

  describe "#column" do
    it "has a reader for column" do
      expect(piece.column).to be(1)
    end
  end
end
