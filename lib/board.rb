# frozen_string_literal: true

# Class to control the playing board
class Board
  def initialize(state = Array.new(6) { Array.new(7, "\u26AA") }, column_filling = Array.new(7, 0))
    @state = state
    @column_filling = column_filling
  end

  def display
    @state.reverse.each do |line|
      puts line.join
    end
    puts Array(1..7).join(' ')
  end

  def update_board(symbol, column)
    column -= 1
    row = @column_filling[column]
    @state[row][column] = symbol
    @column_filling[column] += 1
  end

  def full?(column)
    column -= 1
    @column_filling[column] == 6
  end
end
