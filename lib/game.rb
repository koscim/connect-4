class Game
  attr_reader :name, :players
  def initialize(name)
    @name = "Connect 4"
    @players = []
  end
  def prompt_username
    more_players = 'y'
    puts "Welcome to another fascinating game of #{name}!"
    while more_players == 'y' do
      puts "Please enter your name: "
      username = gets.chomp
      add_user(username)
      puts "Welcome Player #{players.count}: #{players.last.name}!"
      puts "Enter more players?(y/n):"
      more_players = gets.chomp.downcase
    end
  end
  def add_user(player)
    players << Player.new(player)
  end
end
