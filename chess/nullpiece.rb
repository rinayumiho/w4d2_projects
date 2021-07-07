require_relative 'piece'
require 'colorize'
require 'singleton'

class NullPiece < Piece
    include Singleton

    def initialize
        @symbol = "🩅"
    end

    def symbol
        @symbol 
    end

    def moves
    
    end
end