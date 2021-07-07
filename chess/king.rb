require_relative 'piece'
require_relative 'stepable'

class King
    include stepable

    def symbol
        "♚".colorize(color)
    end

    def moves_diffs
        [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]
    end
end