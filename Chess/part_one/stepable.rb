#need to implement 
module Stepable 

    KNIGHTMOVES = [ [-2, -1], [-2,  1], [-1, -2], [-1,  2], [ 1, -2], [ 1,  2], [ 2, -1], [2, 1] ]
    KINGMOVES = [ [0,1], [1,0], [0,-1], [-1,0], [1,1], [-1,-1], [1,-1], [-1,1] ]

    def knight_moves 
        KINGMOVES
    end

    def king_moves 
        KINGMOVES
    end

    def moves
        # check if it's a valid move 
        # check new_pos if empty
        x = pos[0]
        y = pos[1]

        possible_moves = []
        
        move_diffs.each do |(dx, dy)|
            new_pos = [x + dx, y + dy]
            if board[new_pos].symbol.nil?
                possible_moves << new_pos
            end
            x, y = new_pos
        end
        
        possible_moves
    end

    private 

    def move_diffs
        raise NotImplementedError
    end
end 