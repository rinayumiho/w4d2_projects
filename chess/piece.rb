class Piece
    attr_reader :color, :board, :position

    def initialize(color, board, position)
        @color = color
        @position = position
        @board = board
    end

    def pos=(val)
        @position = val
    end
end