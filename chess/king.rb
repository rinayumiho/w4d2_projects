require_relative 'piece'
require_relative 'stepable'
require 'colorize'

class King < Piece
    include Stepable

    def symbol
        "♚".colorize(color)
    end

    def moves_diffs
        [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
    end
end