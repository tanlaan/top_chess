# frozen_string_literal: true

require_relative '../lib/knight'

RSpec.describe Knight do
  context 'When moving' do
    it 'can move forward & left' do
      f_l_move = Knight.new
      start = [5, 0]
      move = [4, 2]
      expect(f_l_move.valid_move?(start, move)).to be true
    end

    it 'cannot move directly forward' do
      forward_move = Knight.new
      start = [5, 0]
      move = [5, 2]
      expect(forward_move.valid_move?(start, move)).to be false
    end
  end
end
