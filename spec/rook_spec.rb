# frozen_string_literal: true

require_relative '../lib/rook'

RSpec.describe Rook do
  context 'When moving' do
    it 'can move forward' do
      forward_move = Rook.new
      start = [0, 0]
      move = [0, 2]
      expect(forward_move.valid_move?(start, move)).to be true
    end

    it 'cannot move diagonally' do
      diag_move = Rook.new
      start = [0, 0]
      move = [1, 1]
      expect(diag_move.valid_move?(start, move)).to be false
    end
  end
end
