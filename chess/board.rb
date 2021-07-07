require_relative 'piece'
require_relative 'nullpiece'
require_relative 'rook'
require_relative  'king'
require_relative 'knight'
require_relative 'bishop'
require_relative 'queen'
require_relative 'pawn'


class Board
    def initialize
        @grid = Array.new(8) {Array.new(8, NullPiece.instance)} 
        set_board
    end

    # def set_board
    #     @grid.each.with_index do |row, idx|
    #         (0..7).each {|j| @grid[idx][j] = Piece.new} if idx == 0 || idx == 1 || idx == 6 || idx == 7 
    #     end
    # end
    def set_board 
        @grid.each.with_index do |row, idx| 
            if idx == 0 
                row.map!.with_index do |ele, i| 
                    if i == 0 || i == 7 
                         Rook.new('white', [idx, i], self)
                    elsif i == 1 || i == 6 
                        Knight.new('white', [idx, i], self)
                    elsif i == 2 || i == 5
                        Bishop.new('white', [idx, i], self)
                    elsif i == 3 
                        Queen.new('white', [idx, i], self)
                    elsif i == 4 
                        King.new('white', [idx, i], self)
                    end
                end
            elsif idx == 1 
                row.map!.with_index{|ele, i| ele = Pawn.new('white',[idx, i], self)}

            elsif idx == 6 
                row.map!.with_index{|ele, i| ele = Pawn.new('black',[idx, i], self)}

            elsif idx == 7 
                row.map!.with_index do |ele, i| 
                    if i == 0 || i == 7 
                         Rook.new('black', [idx, i], self)
                    elsif i == 1 || i == 6 
                        Knight.new('black', [idx, i], self)
                    elsif i == 2 || i == 5
                        Bishop.new('black', [idx, i], self)
                    elsif i == 3 
                        King.new('black', [idx, i], self)
                    elsif i == 4 
                        Queen.new('black', [idx, i], self)
                    end
                end
                
            end
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
        self[start_pos] = NullPiece.instance 
    end
    def redner 
        puts '|' + '-------------------------------' + '|'
        @grid.each {|sub_grid| 
            puts '| ' + sub_grid.join(' | ') + ' |'
            puts '|' + '-------------------------------' + '|' }
        
    end
end


board = Board.new 
# pos = [1,1]
# pos2 = [4,4]

# p board[pos]
# p '------------'
# p board[pos2]
# p '-------------'
# board[pos2] = 's'
# p board[pos2]
# p '--------'
# board[pos2] = board[pos]
# p board[pos2]
board.redner
# p = Pawn.new('black', [1,1], '')
