# require_relative 'board'
class Piece
    attr_reader :color, :board, :position
    
    def initialize(color, position, board)
        @color = color
        @position = position
        @board = board
    end
   
    def empty?
        return true if board[self.position] == NullPiece
        false
    end

    def pos=(val)
        position == val
    end

    def to_s
        self.symbol
    end
    def symbol

    end

    def valid_moves
        self.moves
    end
  

 
end



# piece = Piece.new 
# p piece 