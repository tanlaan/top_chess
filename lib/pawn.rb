# frozen_string_literal: true

require_relative './piece'

# A chess piece of type pawn
class Pawn < Piece
  def initialize(token = 'p')
    super
    @move_list = [[0, 1]]
    @attack_list = [[1, 1], [-1, 1]]
  end

  # Move list is different depending on position for pawn
  def valid_move?(start, move, list = @move_list)
    # First move of a pawn can be [0,2]
    return super(start, move, list + [[0, 2]]) if start[1] == 1

    super
  end
end
