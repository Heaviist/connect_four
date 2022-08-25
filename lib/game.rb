# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

# Class to control the flow of the Connect Four game.
class Game
  def initialize(board = Board.new, player1 = Player.new("\u2611", 1), player2 = Player.new("\u26D4", 2))
    @board = board
    @player1 = player1
    @player2 = player2
    @turn = 0
  end

  def play
  end
end
