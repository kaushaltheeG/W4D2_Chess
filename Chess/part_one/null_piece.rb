require_relative "piece"

class NullPiece < Piece
    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end 