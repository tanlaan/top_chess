# frozen_string_literal: true

require_relative './piece'

# A chess piece of type knight
class Knight < Piece
  def initialize(token = 'k')
    super
    @move_list = [[-2, -1], [-1, -2],
                  [-2, 1],  [-1, 2],
                  [2, 1],   [1, 2],
                  [2, -1],  [1, -2]]
    @attack_list = @move_list
  end
end
