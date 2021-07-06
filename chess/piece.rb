# require_relative 'board'
class Piece
    attr_reader :color, :board, :position

    def initialize
        @color = color
        @position = position
        @board = board
    end
   

 
end

# piece = Piece.new 
# p piece 