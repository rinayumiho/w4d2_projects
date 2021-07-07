module Slideable
    HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    DIAGONAL_DIRS = [[1, 1], [1, -1], [-1, 1], [-1, -1]]
    
    def horizontal_dirs
        HORIZONTAL_DIRS 
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        moves = [] 
        move_dirs.each {|dir| moves += grow_unblocked_moves_in_dir(dir[0], dir[-1])}   
    end

    def move_dirs
        
        #subclass implements this 
        # raise notimplemetedError this on executes if 
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        valid_moves = []
        x, y = self.position   
        (0..7).each do |i| 
            x += dx  
            y += dy 
           break if x > 7 || x < 0 || y > 7 || y < 0 
           break if board[x, y].color == self.color
           valid_moves << [x,y]
           break if borar[x,y].color != self.color
        end
        valid_moves 
    end
end