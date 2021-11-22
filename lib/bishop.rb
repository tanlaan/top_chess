# frozen_string_literal:true

require_relative './piece'

# A chess piece of type bishop
class Bishop < Piece
  def initialize(token = 'b')
    super
  end

  def valid_move?(start, move)
    # We can only move diagonally
    x, y = vector(start, move)
    x.abs == y.abs
  end

  def valid_attack?(start, move)
    # We can only attack diagonally
    valid_move?(start, move)
  end
end
