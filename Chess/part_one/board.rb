require_relative 'pieces'

class Board
    attr_reader :grid
    
    # def fill_out_pos
    #     index_array = [0, 1, 6, 7]
    #     i = index_array.shift
    #     # until i.nil?
    #         if i == 0
    #             self[i, 0] = :p 
    #         end
    # end

    
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @null_piece = NullPiece
    end

    def fill_out_pos
       self.fill_with_pawn
       self.fill_with_knight
       self.fill_with_rook
       self.fill_with_bishop
       self.fill_with_royalty
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise "no piece found at this start position" if self[start_pos].nil?
        raise "end position is not empty" if !self[end_pos].nil?

        piece = self[start_pos]
        self[start_pos] = nil 
        piece.pos = end_pos
        self[end_pos] = piece
    end 

    #def vaild_moves

    def fill_with_pawn
        (0...@grid[1].length).each do |i|
            @grid[1][i] = Piece.new(:black, self, [1, i])
        end

        (0...@grid[6].length).each do |i|
            @grid[6][i] = Piece.new(:white, self, [6, i])
        end
    end
    
    def fill_with_rook
        #pos [0,0] [0,7] [7,7] [7,0]
        self[[0,7]] = Piece.new(:black, self, [0, 7])
        self[[0,0]] = Piece.new(:black, self, [0, 0])
        self[[7,7]] = Piece.new(:white, self, [7, 7])
        self[[7,0]]  = Piece.new(:white, self, [7, 0])
    end

    def fill_with_knight
        self[[0, 6]] = Piece.new(:black, self, [0, 6])
        self[[0, 1]] = Piece.new(:black, self, [0, 1])
        self[[7, 6]] = Piece.new(:white, self, [7, 6])
        self[[7, 1]] = Piece.new(:white, self, [7, 1])
    end

    def fill_with_bishop
        self[[0, 2]] = Piece.new(:black, self, [0, 2])
        self[[0, 5]] = Piece.new(:black, self, [0, 5])
        self[[7, 2]] = Piece.new(:white, self, [7, 2])
        self[[7, 5]] = Piece.new(:white, self, [7, 5])
    end

    def fill_with_royalty
        self[[0, 3]] = Piece.new(:black, self, [0, 3])
        self[[0, 4]] = Piece.new(:black, self, [0, 4])
        self[[7, 3]] = Piece.new(:white, self, [7, 3])
        self[[7, 4]] = Piece.new(:white, self, [7, 4])
    end
    
    
    

end 