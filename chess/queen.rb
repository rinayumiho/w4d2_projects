class Queen < Piece
    def initialize(color, position, board, symbol)
        super(color, position, board)
        @symbol = symbol
    end

    
end