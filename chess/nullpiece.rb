require_relative 'piece'
require 'colorize'

class NullPiece
    include Singleton

    def initialize
        @symbol = "🩅"

    end

    def symbol
        @symbol
    end

    def moves
        []
    end
end