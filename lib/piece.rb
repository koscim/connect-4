class Piece
  attr_reader :column

  def initialize(column, color)
    @column = column
    @color = color
  end
  
  def place_piece
    piece = PrettyString.new("O")
    puts piece.make_color(:blue)
  end
  # def row_location
  #
  # end
end

class PrettyString < String
  COLORS = {
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    white: 37
  }

  def make_color(color)
    # http://misc.flogisoft.com/bash/tip_colors_and_formatting
    color_code = COLORS[color]
    "\e[#{color_code}m#{self}\e[0m"
  end

end
