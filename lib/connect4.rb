require_relative 'game'
require_relative 'player'
# require_relative 'board'
require_relative 'piece'

class Connect4
  def initialize
    set_up_game
    play_game
  end

  def set_up_game
    game = Game.new("Connect 4")
  end

  def play_game
    game.prompt_username
  end
end
require 'pry'
binding.pry

# game = Connect4.new
# game.play_game
