require_relative "piece"


class King < Piece

    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end