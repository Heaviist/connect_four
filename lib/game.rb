# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

# Class to control the flow of the Connect Four game.
class Game
  def initialize
    @board = Board.new
    @player1 = Player.new("\u2611", 1)
    @player2 = Player.new("\u26D4", 2)
    @turn = 0
  end

  def play
    @board.display
    introduction
    # turn(@current_player)
  end

  def turn; end

  private

  def introduction
    puts <<~HEREDOC

      \e[7m\e[36mWelcome to Gravitrips, also known as Connect-Four.\e[0m\e[27m

      Above you can see the game board. The goal of this game is to create a line of 4 of your symbols before your opponent can achieve this. This can be horizontal, vertical or diagonal.

      \e[7m\e[36m#{@player1.name} will play #{@player1.symbol}

      #{@player2.name} will play #{@player2.symbol}\e[m\e[27m

      When it's your turn, you will be asked to type a number from 1 to 7 corresponding to the column where you want to play your symbol. It will fall into that column to the first circle that doesn't contain a player symbol yet.

      Good luck!
    HEREDOC
  end
end
