# frozen_string_literal: true

# Base class for chess pieces
class Piece
  def initialize(token = '*')
    @token = token
    @move_list = []
    @attack_list = []
  end

  def valid_play?(start, move, list)
    move = vector(start, move)
    list.include?(move)
  end

  def valid_move?(start, move, list = @move_list)
    valid_play?(start, move, list)
  end

  def valid_attack?(start, move, list = @attack_list)
    valid_play?(start, move, list)
  end

  def vector(a, b)
    # break out coordinates from positions
    a_x, a_y = a
    b_x, b_y = b
    # calculate move vector
    [(b_x - a_x), (b_y - a_y)]
  end

  def to_s
    @token
  end
end
