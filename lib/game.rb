class Game
  attr_reader :name, :players, :board
  def initialize(name)
    @name = "Connect 4"
    @players = []
    @board = []
  end
  def prompt_username
    puts "Welcome to another fascinating game of #{name}!"
    while @players.count < 2 do
      puts "New Player - Please enter your name: "
      username = gets.chomp
      if @players.select { |player| player.name == username } == []
        add_user(username)
        puts "Welcome Player #{players.count}: #{players.last.name}!"
      else
        puts "Invalid Entry: Entered name is a duplicate name."
      end
    end
  end
  def add_user(player)
    if players.count == 1
      @players << Player.new(player, :pink)
    else
      @players << Player.new(player, :cyan)
    end
  end
  def create_board
    @board = Board.new
  end
  def display_board
    column_numbers = [1, 2, 3, 4, 5, 6, 7]
    column_numbers.each do |number|
      print " " + number.to_s + " "
    end
    print "\n"
    @board.board.each do |row|
      row.each do |column|
        print column
      end
      print "\n"
    end
  end
  def prompt_user_location
    binding.pry
    players.add_piece(location)
  end
end
