# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  describe '#introduction' do
    # puts only
  end

  describe '#play_turn' do
    # to be added later
  end

  describe '#current_player' do
    context 'when a new game is started' do
      subject(:game_current_player) { described_class.new }
      it 'the current player will be player 1' do
        expected_player = game_current_player.instance_variable_get(:@player1)
        current_player = game_current_player.current_player
        expect(current_player).to eq(expected_player)
      end
    end
  end

  describe '#instructions' do
    # puts only
  end

  describe '#introduce_players' do
    # puts only
  end
end
