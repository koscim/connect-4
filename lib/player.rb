class Player
  attr_reader :name, :color
  attr_accessor :lost, :matches

  def initialize(name, color)
    @name = name
    @color = color
    @lost = false
    @matches = 0
    @pieces = []
  end

  def add_piece(column)
    piece = Piece.new(@column, @color)
    @pieces << piece
  end
end
