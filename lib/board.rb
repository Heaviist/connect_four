# frozen_string_literal: true

# Class to control the playing board
class Board
  attr_reader :state

  def initialize
    @state = Array.new(6) { Array.new(7, "\u26AA") }
    @column_filling = Array.new(7, 0)
  end

  def display
    state.reverse.each do |line|
      puts line.join
    end
    puts Array(1..7).join(' ')
  end
end
