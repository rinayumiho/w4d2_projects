require_relative 'slideable'
require_relative 'piece'

class Queen < Piece
    include slideable

    def symbol
        "♛".colorize(color)
    end

    def move_dirs
        horizontal_dirs
        diagonal_dirs
    end 
    
end