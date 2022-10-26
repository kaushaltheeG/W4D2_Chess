require_relative "piece"


class NullPiece < Piece
    include Singleton 
    attr_reader :color, :symbol
    def initialize
        @color = nil 
        @symbol = nil 
    end
end 