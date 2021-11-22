# frozen_string_literal: true

require_relative '../lib/pawn'

RSpec.describe Pawn do
  context 'when first moving' do
    it 'can move two spaces forward' do
      first_moving = Pawn.new
      start = [0, 1]
      move  = [0, 3]
      expect(first_moving.valid_move?(start, move)).to be_truthy
    end
  end
  it 'can move one space forward' do
    one_space = Pawn.new
    start = [0, 1]
    move  = [0, 2]
    expect(one_space.valid_move?(start, move)).to be true
  end
  it 'cannot move two spaces normally' do
    two_space = Pawn.new
    start = [0, 2]
    move  = [0, 4]
    expect(two_space.valid_move?(start, move)).to be false
  end

  context 'When attacking' do
    it 'can attack to the left' do
      left_attack = Pawn.new
      start = [1, 1]
      move = [0, 2]
      expect(left_attack.valid_attack?(start, move)).to be true
    end

    it 'can attack to the right' do
      right_attack = Pawn.new
      start = [0, 1]
      move = [1, 2]
      expect(right_attack.valid_attack?(start, move)).to be true
    end

    it 'cannot attack forward' do
      forward_attack = Pawn.new
      start = [0, 1]
      move = [0, 2]
      expect(forward_attack.valid_attack?(start, move)).to be false
    end
  end
end
