require_relative "piece"


class Bishop < Piece

    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end