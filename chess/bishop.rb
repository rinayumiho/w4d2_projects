class Bishop < Piece
    
    def symbol 
        '♗'.colorize(color)
    end 

    def move_dirs
       diagonal_dirs
    end
    
end