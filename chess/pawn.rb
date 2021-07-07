require_relative 'piece'
require_relative 'stepable'

class Pawn
    include stepable

    def symbol
        "♙".colorize(color)
    end

    def moves
        [[1, 0], [1, 1], [1, -1]]
    end
end