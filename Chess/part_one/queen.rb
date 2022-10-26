require_relative "piece"


class Queen < Piece

    def initialize(color,board,pos,symbol)
        super
        @symbol = symbol
    end
end