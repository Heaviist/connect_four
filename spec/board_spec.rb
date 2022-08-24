# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  describe '#display' do
    # Only puts, no testing needed
  end

  describe '#update_board' do
    subject(:board_update) { described_class.new }

    context 'when board is in initial state' do
      column = 3
      column_index = column - 1
      symbol = "\u2611"
      initial_symbol = "\u26AA"

      before do
        board_update.update_board(symbol, column)
      end

      it "updates first row with symbol \u2611 in the correct position" do
        state = board_update.instance_variable_get(:@state)[0]
        row0 = [initial_symbol, initial_symbol, symbol, initial_symbol, initial_symbol, initial_symbol, initial_symbol]
        expect(state).to eq(row0)
      end
      it 'updates filling of column #3 to 1' do
        filling = board_update.instance_variable_get(:@column_filling)[column_index]
        expect(filling).to be 1
      end
      it 'does not update any other rows' do
        state = board_update.instance_variable_get(:@state)[1, 5]
        initial_row = Array.new(7, initial_symbol)
        expect(state).to all(eq(initial_row))
      end
    end

    context 'when a column has 3 entries already' do
      column = 6
      column_index = column - 1
      symbol = "\u2611"
      initial_symbol = "\u26AA"

      before do
        3.times { board_update.update_board('x ', column) }
        board_update.update_board(symbol, column)
      end

      it "updates 4th row with symbol \u2611 in the correct position" do
        state = board_update.instance_variable_get(:@state)[3]
        row3 = [initial_symbol, initial_symbol, initial_symbol, initial_symbol, initial_symbol, symbol, initial_symbol]
        expect(state).to eq(row3)
      end
      it 'updates filling of column #6 to 4' do
        filling = board_update.instance_variable_get(:@column_filling)[column_index]
        expect(filling).to be 4
      end
    end
  end
end
