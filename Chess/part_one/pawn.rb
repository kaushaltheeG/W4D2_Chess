require_relative "piece"

class Pawn < Piece
    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end 