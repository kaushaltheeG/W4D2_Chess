require_relative "piece"

class KnightKing < Piece
    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end 