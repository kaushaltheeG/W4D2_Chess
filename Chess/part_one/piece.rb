

class Piece 
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color #symbol
        @board = board #board instance 
        @pos = pos #arr
    end 

    def valid_move?(pos)
        x = pos[0]
        y = pos[1]

        (x >= 0 && x < 8) && (y >= 0 && y < 8)
    end

end 