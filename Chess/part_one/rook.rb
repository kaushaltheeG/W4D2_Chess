require_relative "piece"
require_relative "slideable"


class Rook < Piece
    include Slideable
    def initialize(color,board,pos,symbol)
        super(color,board,pos)
        @symbol = symbol
    end

    

end
