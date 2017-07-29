class Board
  attr_accessor :board

  def initialize
    @board = []
    6.times do
      row = []
      count = 0
      7.times do
        if count == 0
          row << "|  |"
        else
          row << "  |"
        end
        count += 1
      end
      @board << row
    end
  end
end
