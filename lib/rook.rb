# frozen_string_literal:true

require_relative './piece'

# A chess piece of type rook
class Rook < Piece
  def initialize(token = 'r')
    super
  end

  def valid_move?(start, move)
    x, y = vector(start, move)
    x.zero? || y.zero?
  end

  def valid_attack?(start, move)
    valid_move?(start, move)
  end
end
