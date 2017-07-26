require_relative 'game'
require_relative 'player'

game = Game.new("Connect 4")
game.prompt_username
require 'pry'
binding.pry
