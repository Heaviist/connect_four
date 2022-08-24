# frozen_string_literal: true

# Class to create a Player for the game
class Player
  attr_reader :name

  def initialize(symbol)
    @name = player_name
    @symbol = symbol
  end

  def player_name
    puts "Please write the name for player #{@@player_no} and press enter:"
    gets.chomp
  end
end
