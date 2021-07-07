require_relative 'piece'
require_relative 'stepable'
require 'colorize'

class Knight
    include stepable

    def symbol
        "♞".colorize(color)
    end

    def moves_diffs
        [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]]
    end
end