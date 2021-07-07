require_relative 'piece'
require_relative 'stepable'

class Pawn < Piece

    def symbol
        "♙".colorize(color)
    end

    def moves
        []
    end

    def at_start_row?
        x = self.position[0]
        return true if self.color == "white" && x == 1
        return true if self.color == "black" && x == 6
        false
    end

    def forward_dir
        return 1 if self.color == "white"
        return -1 if self.color == "black"
    end

    def forward_steps
        x, y = self.position

        if x + forward_dir > -1 && x + forward_dir < 8 && board[x + forward_dir, y] == NullPiece
            moves <<[x + forward_dir, y]
            if at_start_row? && x + 2 <= 7 && self.color = "white" && board[x + 2, y] == NullPiece
                moves <<[x + 2, y]
            elsif at_start_row? && x - 2 >= 0 && self.color = "black" && board[x - 2, y] == NullPiece
                moves <<[x - 2, y]
            end
        end

        
    end

    def side_attacks
        x, y = self.position
        if self.color == "white"

            if board[x + 1, y + 1] != NullPiece && board[x + 1, y + 1].color != self.color
                moves <<[x + 1, y + 1]
            elsif board[x + 1, y - 1] != NullPiece && board[x + 1, y - 1].color != self.color
                moves <<[x + 1, y - 1]
            end
        end
        if self.color == "black"
            if board[x - 1, y + 1] != NullPiece && board[x - 1, y + 1].color != self.color
                moves <<[x - 1, y + 1]
            elsif board[x - 1, y - 1] != NullPiece && board[x - 1, y - 1].color != self.color
                moves <<[x - 1, y - 1]
            end
        end

    end

    # curr pos = [6, 2] possible next position [5, 2], [4, 2], [5, 1], [5, 3] attack
    # curr pos = [5, 2] possible next position [4, 2] if no enemy, [4, 1] and [4, 3] if attack
end