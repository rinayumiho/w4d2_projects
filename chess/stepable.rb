module Stepable

    def moves
        x, y = self.position
        valid_moves = []
        moves_diffs.each do |move|
            next if board[move[0] + x, move[-1] + y].color == self.color
            next if move[0] + x < 0 || move[0] + x > 7 || move[1] + y < 0 || move[1] + y > 7
            valid_moves << [move[0] + x, move[1] + y]
        end
    end

end