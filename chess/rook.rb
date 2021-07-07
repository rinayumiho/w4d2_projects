require_relative 'slideable'
require_relative 'piece'

class Rook < Piece
    include slideable

    def symbol
    "♜".colorize(color)
    end

    def move_dirs
        horizontal_dirs
    end
end