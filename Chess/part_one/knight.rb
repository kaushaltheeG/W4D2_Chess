require_relative "piece"
require_relative "stepable"

class Knight < Piece

    include Stepable
    attr_reader :symbol

    def initialize(color,board,pos,symbol)
        super(color,board,pos)
        @symbol = symbol
    end

    def move_diffs
        knight_moves.select { |move| valid_move?(move)}
    end
    
end 