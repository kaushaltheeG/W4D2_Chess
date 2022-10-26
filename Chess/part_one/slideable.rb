module Slideable

    HORIZONTAL_DIRS = [[0,1], [1,0], [0,-1], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,-1], [1,-1],[-1,1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def move_dirs
        raise NotImplementedError
    end

    def moves
        moves = []
        
        move_dirs.each do |dx,dy|
            moves.concat(grow_unblocked_moves_in_dir(dx,dy))
            #new_peice = board[moves.last] 
        end

        moves
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        row, col = pos
    
        row + dx = x
        col + dy = y

        possible_moves = []

        while true 
            if (x >= 0 && x < 8) && (y >= 0 && y < 8) && !possible_moves.include?(new_pos)
                new_pos = [(row + dx),(col + dy)]
                if board[new_pos].nil? 
                    possible_moves << new_pos
                elsif new_piece.color != self.color
                    possible_moves << new_pos
                    break 
                elsif new_piece.color == self.color
                    break 
                end
                row, col = new_pos 
            else 
                break 
            end 
        end 
        possible_moves
    end 



end
