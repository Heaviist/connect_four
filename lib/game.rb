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
    @players = [@player1, @player2]
    @current_player_index = 0
  end

  def start
    instructions
    sleep 2
    @board.display
    sleep 2
    introduce_players
    sleep 2
    play_turn
  end

  private

  def play_turn
    # move = player_input(current_player)
  end

  def current_player
    @players[@current_player_index]
  end

  def next_player
    @current_player_index = (@current_player_index + 1) % @players.size
  end

  def instructions
    puts <<~HEREDOC

        \e[7m\e[36mWelcome to Gravitrips, also known as Connect-Four.\e[0m\e[27m

      Below you can see the game board. The goal of this game is to create a line of 4 of your symbols before your opponent can achieve this. This can be horizontal, vertical or diagonal.

    HEREDOC
  end

  def introduce_players
    puts <<~HEREDOC

      \e[7m\e[36m#{@player1.name} will play #{@player1.symbol}

      #{@player2.name} will play #{@player2.symbol}\e[m\e[27m

      When it's your turn, you will be asked to type a number from 1 to 7 corresponding to the column where you want to play your symbol. It will fall into that column to the first circle that doesn't contain a player symbol yet.

      Good luck!

    HEREDOC
  end
end
