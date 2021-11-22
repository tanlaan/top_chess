# frozen_string_literal: true

require_relative '../lib/bishop'

RSpec.describe Bishop do
  context 'When moving' do
    it 'can only move diagonally' do
      diag_move = Bishop.new
      start = [2, 0]
      move = [0, 2]
      expect(diag_move.valid_move?(start, move)).to be true
    end

    it 'cannot move forward' do
      forward_move = Bishop.new
      start = [2, 0]
      move = [2, 1]
      expect(forward_move.valid_move?(start, move)).to be false
    end
  end
end
