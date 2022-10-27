require_relative "piece"
require_relative "stepable"

class King < Piece

    include Stepable
    attr_reader :symbol

    def initialize(color,board,pos,symbol)
        super(color,board,pos)
        @symbol = symbol
    end

    def move_diffs
        king_moves.select { |move| valid_move?(move)}
    end

end