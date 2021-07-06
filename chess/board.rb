require_relative 'piece'
class Board
    def initialize
        @grid = Array.new(8) {Array.new(8)} 
        set_board
    end

    def set_board
        @grid.each.with_index do |row, idx|
            (0..7).each {|j| @grid[idx][j] = Piece.new} if idx == 0 || idx == 1 || idx == 6 || idx == 7 
        end
    end
    def [](pos)
        @grid[pos[0]][pos[-1]]
    end
    def []=(pos, val)
        @grid[pos[0]][pos[-1]] = val 
    end
    def move_piece(start_pos, end_pos)
        self[end_pos] = self[start_pos]
        self[start_pos] = nil 
    end
end


board = Board.new 
pos = [1,1]
pos2 = [4,4]

# p board[pos]
# p '------------'
# p board[pos2]
# p '-------------'
# board[pos2] = 's'
# p board[pos2]
# p '--------'
# board[pos2] = board[pos]
# p board[pos2]
p board.move_piece(pos, pos2)