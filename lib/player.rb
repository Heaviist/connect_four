# frozen_string_literal: true

# Class to create a Player for the game
class Player
  attr_reader :name, :symbol

  def initialize(symbol, player_no)
    @name = player_name(player_no)
    @symbol = symbol
  end

  def player_name(player)
    puts "\nPlease write the name for player #{player} and press enter:"
    gets.chomp
  end
end
