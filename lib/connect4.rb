require_relative 'game'
require_relative 'player'
require_relative 'board'
require_relative 'piece'

class Connect4
  attr_reader :game
  def initialize
    set_up_game
    # play_game
  end

  def set_up_game
    @game = Game.new("Connect 4")
    @game.prompt_username
    @game.create_board
    binding.pry
    @game.display_board
  end

  def play_game

  end
end
require 'pry'
binding.pry

# game = Connect4.new
